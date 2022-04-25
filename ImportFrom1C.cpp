//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <math.h>
#include<stdio.h>
#include<time.h>
#include<DateUtils.hpp>
#include<io.h>
#include <ComObj.hpp>
#include <sysvari.h>


#include "Main.h"
#include "DataModule.h"
//#include "Contractors.h"
#include "Nomenclature.h"
#include "ImportFrom1C.h"
#include "DBF_File.h"
#include "utils.h"
#include "SMTPMessage.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "Placemnt"
#pragma link "JvExMask"
#pragma link "JvToolEdit"
#pragma link "SmrtPanel"
#pragma link "JvExStdCtrls"
#pragma link "JvMemo"
#pragma link "FIBQuery"
#pragma link "pFIBQuery"
#pragma link "RXSpin"
#pragma link "FIBDatabase"
#pragma link "pFIBDatabase"
#pragma link "ToolEdit"
#pragma link "FIBDataSet"
#pragma link "pFIBDataSet"
#pragma link "ZipBuilder"
#pragma link "CGAUGES"
#pragma link "JvBitBtn"
#pragma link "JvExButtons"
#pragma link "JvComponent"
#pragma link "JvExControls"
#pragma link "JvXPButtons"
#pragma link "JvXPCore"
#pragma resource "*.dfm"
TImportFrom1CForm *ImportFrom1CForm;
//---------------------------------------------------------------------------
__fastcall TImportFrom1CForm::TImportFrom1CForm(TComponent* Owner)
        : TForm(Owner)
{
AnsiString DirImport;
AnsiString FileZip;
int c=0;
TSearchRec sr;
int CountFileAll=0;
AnsiString sql,str;
unsigned short y,m,d;
unsigned short yi,mi,di;
TDateTime lockDate;
unsigned short yl,ml,dl;

AnsiString iniFileName=MainForm->WorkDir+"SB_2009.ini";
FormStorage1->IniFileName=iniFileName;
FormStorage1->IniSection="ImportFrom1CForm";
if(!DirectoryExists(MainForm->WorkDir+"Import\\")) CreateDir(MainForm->WorkDir+"Import\\");
if(!DirectoryExists(MainForm->WorkDir+"Export\\")) CreateDir(MainForm->WorkDir+"Export\\");
LoadButton->Enabled=false;
UndoButton->Enabled=false;
Memo->Clear();
org_id=SaleBookDM->OrganizationID;
user_id=SaleBookDM->UserID;
TIniFile *ini=new TIniFile(iniFileName);
rs_id=ini->ReadInteger("EntryParams", "RS_ID",0);
delete ini;
dbfFile=NULL;
lockDate=SaleBookDM->GetConstValue(SaleBookDM->OrganizationID,"LOCK_EDIT_DATE");
tekDate=Date();
lockDate.DecodeDate(&yl,&ml,&dl);

  TDateTime dti=Date()-4;
  dti.DecodeDate(&yi,&mi,&di);


DirImport=MainForm->WorkDir+"Import\\";
SetCurrentDir(DirImport);

  SaleBookDM->TempQuery->Close();
  SaleBookDM->TempQuery->SQL->Clear();
  sql="select COUNT(EDIT_KEY) as CEK from ACCOUNTS where M="+IntToStr(mi);
  sql+=" and Y="+IntToStr(yi);
  SaleBookDM->TempQuery->SQL->Add(sql);
  try
  {
    SaleBookDM->TempQuery->ExecQuery();
  }
  catch(const Exception &exc)
  {
    MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
    return;
  }


 if(SaleBookDM->TempQuery->FieldByName("CEK")->AsInteger>0)
 {
  SaleBookDM->TempQuery->Close();
  SaleBookDM->TempQuery->SQL->Clear();
  sql="select MIN(EDIT_KEY) as SEK from ACCOUNTS where M="+IntToStr(mi);
  sql+=" and Y="+IntToStr(yi);
  SaleBookDM->TempQuery->SQL->Add(sql);
  try
  {
    SaleBookDM->TempQuery->ExecQuery();
  }
  catch(const Exception &exc)
  {
    MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
    return;
  }
  if(SaleBookDM->TempQuery->FieldByName("SEK")->AsInteger==0)
  {
    Memo->Lines->Add("������� �������������! ��� ������� ������ ���������� ��������� �������������� ���� ������� � ������� ��!!!");
    LoadButton->Enabled=false;
    UndoButton->Enabled=false;
    SendButton->Enabled=false;
    return;
  }
 }

if(tekDate < lockDate)
{
Memo->Lines->Add("������ �������� !!!");
LoadButton->Enabled=false;
SendButton->Enabled=false;

mi=ml;
yi=yl;

TempQuery->Close();
TempQuery->SQL->Clear();
sql="select distinct count(LCHET) as CR from NDOST where DOBAVL=1 and M="+IntToStr(mi)+" and Y="+IntToStr(yi);
TempQuery->SQL->Add(sql);
try
{
TempQuery->ExecQuery();
}
catch(const Exception &exc)
{
MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
}

if (TempQuery->FieldByName("CR")->AsInteger > 0)
{
Memo->Lines->Add("����� ������������� �������� ��� ��� ������� ��� ����������� �������!!!");
Memo->Lines->Add("���� ��� �� ������ ������� ������������� ����� �� ���������� ������� ��� ������� !!!!!!!");
Memo->Lines->Add("��������!!! ����� ��������������� ������ �������� ������ ������� �� ����������� �������!!!!!!");
UndoButton->Enabled=false;
}
else
{
Memo->Lines->Add("����� �������� !!!");
UndoButton->Enabled=true;
SendButton->Enabled=true;
}

return;
}
else
{
Memo->Lines->Add("������ �������� !!!");

  // �������� ����� �� ������� ������ zip

/*if (FindFirst("*.zip",faAnyFile , sr) == 0)
{
FileZip=sr.Name.Trim();
  while (FindNext(sr)==0)
  {
  FileZip=sr.Name.Trim();
  }
}

if(!FileZip.IsEmpty() && FileExists(FileZip))
{
    Memo->Lines->Add("���������� ������ �� ������..." + FileZip);
    ZipBuilder->ZipFileName=FileZip;
    ZipBuilder->ExtrBaseDir=ExtractFileDir(FileZip);
    ZipBuilder->FSpecArgs->Clear();
    ZipBuilder->ExtrOptions.Clear();
    ZipBuilder->ExtrOptions << ExtrOverWrite;
    ZipBuilder->Extract();*/
//    if(ZipBuilder->SuccessCnt != 1)
//    {
//      MessageDlg("������ ���������� ��������� �����",mtError,TMsgDlgButtons() << mbOK,0);
//      return;
//    }

//    Memo->Lines->Add("�������� ���� ZIP ��������!");
//    DeleteFile(FileZip);

  // �������� ����� �� ������� ������ dbf

if (FindFirst("*.dbf",faAnyFile , sr) == 0)
{
CountFileAll++;
if (sr.Name.Trim() == "d_print.dbf" ) c++;
if (sr.Name.Trim() == "db1.dbf" ) c++;
if (sr.Name.Trim() == "sm_print.dbf" ) c++;
  while (FindNext(sr)==0)
  {
  if (sr.Name.Trim() == "d_print.dbf" ) c++;
  if (sr.Name.Trim() == "db1.dbf" ) c++;
  if (sr.Name.Trim() == "sm_print.dbf" ) c++;
  CountFileAll++;
  }
}

if (c==0)
{
Memo->Lines->Add("� ����� ��� ������� �� ���������� ���������� �� ����� � ���� ����� dbf ��� �������!!!");
LoadButton->Enabled=false;
SendButton->Enabled=false;
return;
}

if (c==3)
{
Memo->Lines->Add("� ����� ��� ������� ���������� ���������� ��� ������� ������� dbf !!!");
LoadButton->Enabled=true;
SendButton->Enabled=true;
}else
{
Memo->Lines->Add("� ����� ��� ������� �� ��� ���������� ���������� �� ����� � ���� ����� dbf ��� �������!!!");
LoadButton->Enabled=false;
SendButton->Enabled=false;
return;
}

if (ml==12)
{
 mi=1;
 yi=yl++;
}else
{
 mi=ml+1;
 yi=yl;
}

TempQuery->Close();
TempQuery->SQL->Clear();
sql="select distinct count(LCHET) as CR from NDOST where DOBAVL=1 and M="+IntToStr(mi)+" and Y="+IntToStr(yi);
TempQuery->SQL->Add(sql);
try
{
TempQuery->ExecQuery();
}
catch(const Exception &exc)
{
MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
}
if (TempQuery->FieldByName("CR")->AsInteger > 0)
{
Memo->Lines->Add("����� ������������� �������� ��� ��� ������� ��� ����������� �������!!!");
Memo->Lines->Add("���� ��� �� ������ ������� ������������� ����� �� ���������� ������� ��� ������� !!!!!!!");
Memo->Lines->Add("��������!!! ����� ��������������� ������ �������� ������ ������� �� ����������� �������!!!!!!");
UndoButton->Enabled=false;
//return;
}
else
{
TempQuery->Close();
TempQuery->SQL->Clear();
sql="select distinct count(LCHET) as CR from NDOST where M="+IntToStr(mi)+" and Y="+IntToStr(yi);
TempQuery->SQL->Add(sql);
try
{
TempQuery->ExecQuery();
}
catch(const Exception &exc)
{
MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
}
if (TempQuery->FieldByName("CR")->AsInteger == 0)
{
UndoButton->Enabled=false;
}else
{
Memo->Lines->Add("����� �������� !!!");
UndoButton->Enabled=true;
SendButton->Enabled=true;

}
}
/*}else
{
Memo->Lines->Add("� ����� ��� ������� ��� ��������� ����� ZIP ��� �������!!!");
LoadButton->Enabled=false;
return;
}*/
}
LoadButton->Enabled=true;
SendButton->Enabled=false;
}
//---------------------------------------------------------------------------
void __fastcall TImportFrom1CForm::CloseButtonClick(TObject *Sender)
{

  if(dbfFile!=NULL) delete dbfFile;
  Close();
  if(countzap==0) ModalResult = mrCancel; else ModalResult = mrOk;
}
//---------------------------------------------------------------------------
//��������� ������
void __fastcall TImportFrom1CForm::LoadButtonClick(TObject *Sender)
{
AnsiString sql,str;
unsigned short y,m,d;
unsigned short yi,mi,di;
TDateTime lockDate;
unsigned short yl,ml,dl;

// ������ ������� ndost

AnsiString lchet1="";
double summa=0.00;
AnsiString word="";
int metka =0;
int neopl =0;
int pnn =0;
int lchet =0;
AnsiString family="";
AnsiString name="";
AnsiString father="";
int kod=0;
TDateTime c=NULL;
TDateTime doc=NULL;
AnsiString seria="";
int nomer =0;
int dost=0;
int d_vipl=0;
AnsiString ulic="";
AnsiString adres="";
int chel=0;
int metka1=0;
int vnom=0;
AnsiString prich="";
int ist=0;
int bsumma=0;
AnsiString bword="";
int fakt_chel=0;
int fakt_dat=0;
int nsp=0;
AnsiString kem_vid="";
TDateTime data_vid=NULL;
AnsiString bufstr;
int kodpen=0;
int fond=0;
int dobavl=0;
int mn=0;
int yn=0;

// ������ ������� accounts & sgb

int org_id;
TDateTime count_date;
int count_number;
int kassa=0;
int customer_id,user_id,rs_id,edit_key,count_type,count_totali,count_opli,count_neopli;
AnsiString customer_name="";
double count_total=0.00;
double count_opl=0.00;
double count_neopl=0.00;
double count_tek=0.00;
double count_pr=0.00;
double count_raz=0.00;
double count_neoplp=0.00;
double count_oplp=0.00;
customer_id=0;
user_id=0;
count_totali=0;
count_opli=0;
count_neopli=0;



  lockDate=SaleBookDM->GetConstValue(SaleBookDM->OrganizationID,"LOCK_EDIT_DATE");
  lockDate.DecodeDate(&yl,&ml,&dl);
  UndoButton->Enabled=false;

  TDateTime dti=Date()-5;
  dti.DecodeDate(&yi,&mi,&di);
  if (ml==12)
  {
  mi=1;
  yi++;
  }else
  {
  mi=ml+1;
  yi=yl;
  }

  SaleBookDM->SetConstValue(SaleBookDM->OrganizationID,"LOCK_WORK_DATE","1");
//  MessageDlg("�� �������!!!",mtError,TMsgDlgButtons() << mbOK,0);
  MainForm->MainStatusBar->Panels->Items[4]->Text="���� ������� �� ������ ����� ��������� ����!!! ";
  MainForm->MainStatusBar->Color=clRed;
  SaleBookDM->ConnectToDataBase();

  str="�� �� �� ����� ������� ����� ��������� ���� ������� !!! ";
  Memo->Lines->Add(str);
  str="���� ��������� ������ �� �������� ������ � �� �������� !!! ";
  Memo->Lines->Add(str);

  countzap=0;
  CloseButton->Enabled=false;
  LoadButton->Enabled=false;
  Indicator->Visible = true;
  Indicator->MinValue=0;
  sql="";
// ������� 3 ������ � ����� � ��������� ������ � ���������

// ������� ndost � �����

  DB1->Close();
  DB1->SQLs->SelectSQL->Clear();
  sql="select * from NDOST";
  DB1->SQLs->SelectSQL->Add(sql);
  try
  {
    DB1->Open();
  }
  catch(const Exception &exc)
  {
    MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
  }
  DB1->Last();
  Indicator->MinValue=0;
  Indicator->MaxValue=DB1->RecordCount;

  DB1->First();
  int ns=0;
  while(!DB1->Eof)
  {
       dobavl=0;
       summa=0.00;
      if (!DB1->FieldByName("LCHET1")->AsString.IsEmpty()) lchet1 = DB1->FieldByName("LCHET1")->AsString;
      if (DB1->FieldByName("SUMMA")->AsFloat>0.0) summa=DB1->FieldByName("SUMMA")->AsFloat;
      if (!DB1->FieldByName("WORD")->AsString.IsEmpty()) word = DB1->FieldByName("WORD")->AsString;
      if (DB1->FieldByName("METKA")->AsInteger>=0) metka=DB1->FieldByName("METKA")->AsInteger;
      if (DB1->FieldByName("NEOPL")->AsInteger>=0) neopl=DB1->FieldByName("NEOPL")->AsInteger;
      if (DB1->FieldByName("PNN")->AsInteger>=0) pnn=DB1->FieldByName("PNN")->AsInteger;
      if (DB1->FieldByName("LCHET")->AsInteger>=0) lchet=DB1->FieldByName("LCHET")->AsInteger;
      if (!DB1->FieldByName("FAMILY")->AsString.IsEmpty()) family = DB1->FieldByName("FAMILY")->AsString;
      if (!DB1->FieldByName("NAME")->AsString.IsEmpty()) name = DB1->FieldByName("NAME")->AsString;
      if (!DB1->FieldByName("FATHER")->AsString.IsEmpty()) father = DB1->FieldByName("FATHER")->AsString;
      if (DB1->FieldByName("KOD")->AsInteger>=0) kod=DB1->FieldByName("KOD")->AsInteger;
      c=DB1->FieldByName("C")->AsDateTime;
      doc=DB1->FieldByName("DOC")->AsDateTime;
      if (!DB1->FieldByName("SERIA")->AsString.IsEmpty()) seria = DB1->FieldByName("SERIA")->AsString;
      if (DB1->FieldByName("NOMER")->AsInteger>=0) nomer=DB1->FieldByName("NOMER")->AsInteger;
      if (DB1->FieldByName("DOST")->AsInteger>=0) dost=DB1->FieldByName("DOST")->AsInteger;
      if (DB1->FieldByName("D_VIPL")->AsInteger>=0) d_vipl=DB1->FieldByName("D_VIPL")->AsInteger;
      if (!DB1->FieldByName("ULIC")->AsString.IsEmpty()) ulic=DB1->FieldByName("ULIC")->AsString;
      if (!DB1->FieldByName("ADRES")->AsString.IsEmpty()) adres=DB1->FieldByName("ADRES")->AsString;
      if (DB1->FieldByName("CHEL")->AsInteger>=0) chel=DB1->FieldByName("CHEL")->AsInteger;
      if (DB1->FieldByName("METKA1")->AsInteger>=0) metka1=DB1->FieldByName("METKA1")->AsInteger;
      if (DB1->FieldByName("VNOM")->AsInteger>=0) vnom=DB1->FieldByName("VNOM")->AsInteger;
      if (!DB1->FieldByName("PRICH")->AsString.IsEmpty()) prich = DB1->FieldByName("PRICH")->AsString;
      if (DB1->FieldByName("IST")->AsInteger>=0) ist=DB1->FieldByName("IST")->AsInteger;
      if (DB1->FieldByName("BSUMMA")->AsInteger>=0) bsumma=DB1->FieldByName("BSUMMA")->AsInteger;
      if (!DB1->FieldByName("BWORD")->AsString.IsEmpty()) bword = DB1->FieldByName("BWORD")->AsString;
      if (DB1->FieldByName("FAKT_CHEL")->AsInteger>=0) fakt_chel=DB1->FieldByName("FAKT_CHEL")->AsInteger;
      if (DB1->FieldByName("FAKT_DAT")->AsInteger>=0) fakt_dat=DB1->FieldByName("FAKT_DAT")->AsInteger;
      if (DB1->FieldByName("NSP")->AsInteger>=0) nsp=DB1->FieldByName("NSP")->AsInteger;
      if (!DB1->FieldByName("KEM_VID")->AsString.IsEmpty()) kem_vid = DB1->FieldByName("KEM_VID")->AsString;
      data_vid=DB1->FieldByName("DATA_VID")->AsDateTime;
      if (DB1->FieldByName("DOBAVL")->AsInteger>=0) dobavl=DB1->FieldByName("DOBAVL")->AsInteger;
      if (DB1->FieldByName("KODPEN")->AsInteger>=0) kodpen=DB1->FieldByName("KODPEN")->AsInteger;
      if (DB1->FieldByName("FOND")->AsInteger>=0) fond=DB1->FieldByName("FOND")->AsInteger;
      if (DB1->FieldByName("M")->AsInteger>=0) mn=DB1->FieldByName("M")->AsInteger;
      if (DB1->FieldByName("Y")->AsInteger>=0) yn=DB1->FieldByName("Y")->AsInteger;


      TQ->Close();
      TQ->SQL->Clear();
sql="insert into NDOST_A(LCHET1,SUMMA,WORD,METKA,NEOPL,PNN,LCHET,FAMILY,NAME,\
FATHER,KOD,C,DOC,SERIA,NOMER,DOST,D_VIPL,ULIC,ADRES,CHEL,METKA1,VNOM,PRICH,IST,BSUMMA,";
      sql+="BWORD,FAKT_CHEL,FAKT_DAT,NSP,KEM_VID,DATA_VID,DOBAVL,KODPEN,FOND,M,Y) values('";
      sql+=lchet1.Trim()+"',";
      sql+=AnsiString().sprintf("%.02lf",summa)+",'";
      sql+=word.Trim()+"',";
      sql+=IntToStr(metka)+",";
      sql+=IntToStr(neopl)+",";
      sql+=IntToStr(pnn)+",";
      sql+=IntToStr(lchet)+",'";
      sql+=family.Trim()+"','";
      sql+=name.Trim()+"','";
      sql+=father.Trim()+"',";
      sql+=IntToStr(kod)+",'";
      sql+=c.DateString()+"','";
      sql+=doc.DateString()+"','";
      sql+=seria.Trim()+"',";
      sql+=IntToStr(nomer)+",";
      sql+=IntToStr(dost)+",";
      sql+=IntToStr(d_vipl)+",'";
      sql+=ulic.Trim()+"','";
      sql+=adres.Trim()+"',";
      sql+=IntToStr(chel)+",";
      sql+=IntToStr(metka1)+",";
      sql+=IntToStr(vnom)+",'";
      sql+=prich.Trim()+"',";
      sql+=IntToStr(ist)+",";
      sql+=AnsiString().sprintf("%.02lf",bsumma)+",'";
      sql+=bword.Trim()+"',";
      sql+=IntToStr(fakt_chel)+",";
      sql+=IntToStr(fakt_dat)+",";
      sql+=IntToStr(nsp)+",'";
      sql+=kem_vid.Trim()+"','";
      sql+=data_vid.DateString()+"',0,";
      sql+=IntToStr(kodpen)+",";
      sql+=IntToStr(fond)+",";
      sql+=IntToStr(mn)+",";
      sql+=IntToStr(yn)+")";

      TQ->SQL->Add(sql);
      try
      {
        TQ->ExecQuery();
        Indicator->Progress = ns;
      }
      catch (Exception &exc)
      { MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
        TQ->Transaction->Rollback();
        return;
      }
    TQ->Transaction->Commit();
    DB1->Next();
    ns++;
  }
  DB1->Close();
  str="���������� ������� � ����� ��������� ���� NDOST_A - " + IntToStr(ns);
  Memo->Lines->Add(str);

  //�������� ����������
  TQ->Transaction->StartTransaction();
  TQ->Close();
  TQ->SQL->Clear();
  sql="delete from NDOST where ";
  sql+=" M=" + IntToStr(ml);
  sql+=" and Y=" + IntToStr(yl);
  TQ->SQL->Add(sql);
  try
  {
  TQ->ExecQuery();
  }
  catch (Exception &exc)
  {
   MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
   TQ->Transaction->Rollback();
   return;
  }
  TQ->Transaction->Commit();

// ����� ������ ������� ������ ������� � ������� ������� � ����� � ��������� ������ � ���������


// ������� accounts � �����

  DB1->Close();
  DB1->SQLs->SelectSQL->Clear();
  sql="select * from accounts";
  DB1->SQLs->SelectSQL->Add(sql);
  try
  {
    DB1->Open();
  }
  catch(const Exception &exc)
  {
    MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
  }
  DB1->Last();
  Indicator->MinValue=0;
  Indicator->MaxValue=DB1->RecordCount;

  DB1->First();
  ns=0;
  while(!DB1->Eof)
  {
      count_neopli=0;
      count_total=0.00;
      count_opl=0.00;
      count_neopl=0.00;
      count_tek=0.00;
      count_pr=0.00;
      count_raz=0.00;
      count_neoplp=0.00;
      count_oplp=0.00;
      customer_id=0;
      user_id=0;
      count_totali=0;
      count_opli=0;

      if (DB1->FieldByName("ORG_ID")->AsInteger>=0) org_id = DB1->FieldByName("ORG_ID")->AsInteger;
      count_date=DB1->FieldByName("COUNT_DATE")->AsDateTime;
      if (DB1->FieldByName("COUNT_NUMBER")->AsInteger>=0) count_number = DB1->FieldByName("COUNT_NUMBER")->AsInteger;
      if (DB1->FieldByName("CUSTOMER_ID")->AsInteger>=0) customer_id = DB1->FieldByName("CUSTOMER_ID")->AsInteger;
      if (!DB1->FieldByName("CUSTOMER_NAME")->AsString.IsEmpty()) customer_name = DB1->FieldByName("CUSTOMER_NAME")->AsString;
      if (DB1->FieldByName("USER_ID")->AsInteger>=0) user_id = DB1->FieldByName("USER_ID")->AsInteger;
      if (DB1->FieldByName("RS_ID")->AsInteger>=0) rs_id = DB1->FieldByName("RS_ID")->AsInteger;
      if (DB1->FieldByName("COUNT_TOTAL")->AsFloat>0.0) count_total=DB1->FieldByName("COUNT_TOTAL")->AsFloat;
      edit_key = 0;
      if (DB1->FieldByName("COUNT_TYPE")->AsInteger>=0) count_type = DB1->FieldByName("COUNT_TYPE")->AsInteger;
      if (DB1->FieldByName("COUNT_OPL")->AsFloat>0.0) count_opl=DB1->FieldByName("COUNT_OPL")->AsFloat;
      if (DB1->FieldByName("COUNT_NEOPL")->AsFloat>0.0) count_neopl=DB1->FieldByName("COUNT_NEOPL")->AsFloat;
      if (DB1->FieldByName("COUNT_TOTALI")->AsInteger>=0) count_totali = DB1->FieldByName("COUNT_TOTALI")->AsInteger;
      if (DB1->FieldByName("COUNT_OPLI")->AsInteger>=0) count_opli = DB1->FieldByName("COUNT_OPLI")->AsInteger;
      if (DB1->FieldByName("COUNT_NEOPLI")->AsInteger>=0) count_neopli = DB1->FieldByName("COUNT_NEOPLI")->AsInteger;
      if (DB1->FieldByName("COUNT_TEK")->AsFloat>0.0) count_tek=DB1->FieldByName("COUNT_TEK")->AsFloat;
      if (DB1->FieldByName("COUNT_PR")->AsFloat>0.0) count_pr=DB1->FieldByName("COUNT_PR")->AsFloat;
      if (DB1->FieldByName("COUNT_RAZ")->AsFloat>0.0) count_raz=DB1->FieldByName("COUNT_RAZ")->AsFloat;
      if (DB1->FieldByName("COUNT_NEOPLP")->AsFloat>0.0) count_neoplp=DB1->FieldByName("COUNT_NEOPLP")->AsFloat;
      if (DB1->FieldByName("COUNT_OPLP")->AsFloat>0.0) count_oplp=DB1->FieldByName("COUNT_OPLP")->AsFloat;
      if (DB1->FieldByName("M")->AsInteger>0) mn=DB1->FieldByName("M")->AsInteger;
      if (DB1->FieldByName("Y")->AsInteger>0) yn=DB1->FieldByName("Y")->AsInteger;


      TQ->Close();
      TQ->SQL->Clear();
      sql="insert into ACCOUNTS_A ";
      sql+="(ORG_ID,COUNT_DATE,COUNT_NUMBER,CUSTOMER_ID,CUSTOMER_NAME,USER_ID,RS_ID,\
      COUNT_TOTAL,EDIT_KEY,COUNT_TYPE,COUNT_OPL,COUNT_NEOPL,COUNT_TOTALI,COUNT_OPLI,COUNT_NEOPLI,\
      COUNT_TEK,COUNT_PR,COUNT_RAZ,COUNT_NEOPLP,COUNT_OPLP,M,Y)";
      sql+=" values ("+IntToStr(org_id);
      sql+=",'"+count_date.DateString()+"'";
      sql+=","+IntToStr(count_number);
      sql+=","+IntToStr(customer_id);
      sql+=",'"+customer_name.Trim();
      sql+="',"+IntToStr(user_id);
      sql+=",0";
      sql+=","+AnsiString().sprintf("%.02lf",count_total);
      sql+=",0";
      sql+=",0";
      sql+=","+AnsiString().sprintf("%.02lf",count_opl);
      sql+=","+AnsiString().sprintf("%.02lf",count_neopl);
      sql+=","+IntToStr(count_totali);
      sql+=","+IntToStr(count_opli);
      sql+=","+IntToStr(count_neopli);
      sql+=","+AnsiString().sprintf("%.02lf",count_tek);
      sql+=","+AnsiString().sprintf("%.02lf",count_pr);
      sql+=","+AnsiString().sprintf("%.02lf",count_raz);
      sql+=","+AnsiString().sprintf("%.02lf",count_neoplp);
      sql+=","+AnsiString().sprintf("%.02lf",count_oplp);
      sql+=","+IntToStr(mn);
      sql+=","+IntToStr(yn)+")";

      TQ->SQL->Add(sql);
      try
      {
        TQ->ExecQuery();
        Indicator->Progress = ns;
      }
      catch (Exception &exc)
      { MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
        TQ->Transaction->Rollback();
        return;
      }
    TQ->Transaction->Commit();
    DB1->Next();
    ns++;
  }
  DB1->Close();
  str="���������� ������� � ����� ������� ACCOUNTS_A - " + IntToStr(ns);
  Memo->Lines->Add(str);

  //�������� ����������
  TQ->Transaction->StartTransaction();
  TQ->Close();
  TQ->SQL->Clear();
  sql="delete from ACCOUNTS where ";
  sql+=" M=" + IntToStr(ml);
  sql+=" and Y=" + IntToStr(yl);
  TQ->SQL->Add(sql);
  try
  {
  TQ->ExecQuery();
  }
  catch (Exception &exc)
  {
   MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
   TQ->Transaction->Rollback();
   return;
  }
  TQ->Transaction->Commit();


// ������� sgb � �����

  DB1->Close();
  DB1->SQLs->SelectSQL->Clear();
  sql="select * from SGB";
  DB1->SQLs->SelectSQL->Add(sql);
  try
  {
    DB1->Open();
  }
  catch(const Exception &exc)
  {
    MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
  }
  DB1->Last();
  Indicator->MinValue=0;
  Indicator->MaxValue=DB1->RecordCount;

  DB1->First();
  ns=0;
  while(!DB1->Eof)
  {
      prich="";
      kassa=0;
      if (DB1->FieldByName("ORG_ID")->AsInteger>=0) org_id=DB1->FieldByName("ORG_ID")->AsInteger;
      count_date=DB1->FieldByName("COUNT_DATE")->AsDateTime;
      if (DB1->FieldByName("COUNT_NUMBER")->AsInteger>0) count_number=DB1->FieldByName("COUNT_NUMBER")->AsInteger;
      if (!DB1->FieldByName("LCHET1")->AsString.IsEmpty()) lchet1 = DB1->FieldByName("LCHET1")->AsString;
      if (DB1->FieldByName("SUMMA")->AsFloat>0.0) summa=DB1->FieldByName("SUMMA")->AsFloat;
      if (!DB1->FieldByName("WORD")->AsString.IsEmpty()) word = DB1->FieldByName("WORD")->AsString;
      if (DB1->FieldByName("METKA")->AsInteger>=0) metka=DB1->FieldByName("METKA")->AsInteger;
      if (DB1->FieldByName("NEOPL")->AsInteger>=0) neopl=DB1->FieldByName("NEOPL")->AsInteger;
      if (DB1->FieldByName("PNN")->AsInteger>=0) pnn=DB1->FieldByName("PNN")->AsInteger;
      if (DB1->FieldByName("LCHET")->AsInteger>=0) lchet=DB1->FieldByName("LCHET")->AsInteger;
      if (!DB1->FieldByName("FAMILY")->AsString.IsEmpty()) family = DB1->FieldByName("FAMILY")->AsString;
      if (!DB1->FieldByName("NAME")->AsString.IsEmpty()) name = DB1->FieldByName("NAME")->AsString;
      if (!DB1->FieldByName("FATHER")->AsString.IsEmpty()) father = DB1->FieldByName("FATHER")->AsString;
      if (DB1->FieldByName("KOD")->AsInteger>=0) kod=DB1->FieldByName("KOD")->AsInteger;
      c=DB1->FieldByName("C")->AsDateTime;
      doc=DB1->FieldByName("DOC")->AsDateTime;
      if (!DB1->FieldByName("SERIA")->AsString.IsEmpty()) seria = DB1->FieldByName("SERIA")->AsString;
      if (DB1->FieldByName("NOMER")->AsInteger>=0) nomer=DB1->FieldByName("NOMER")->AsInteger;
      if (DB1->FieldByName("DOST")->AsInteger>=0) dost=DB1->FieldByName("DOST")->AsInteger;
      if (DB1->FieldByName("D_VIPL")->AsInteger>=0) d_vipl=DB1->FieldByName("D_VIPL")->AsInteger;
      if (!DB1->FieldByName("ULIC")->AsString.IsEmpty()) ulic=DB1->FieldByName("ULIC")->AsString;
      if (!DB1->FieldByName("ADRES")->AsString.IsEmpty()) adres=DB1->FieldByName("ADRES")->AsString;
      if (DB1->FieldByName("CHEL")->AsInteger>=0) chel=DB1->FieldByName("CHEL")->AsInteger;
      if (DB1->FieldByName("METKA1")->AsInteger>=0) metka1=DB1->FieldByName("METKA1")->AsInteger;
      if (DB1->FieldByName("VNOM")->AsInteger>=0) vnom=DB1->FieldByName("VNOM")->AsInteger;
      if (!DB1->FieldByName("PRICH")->AsString.IsEmpty()) prich = DB1->FieldByName("PRICH")->AsString;
      if (DB1->FieldByName("IST")->AsInteger>=0) ist=DB1->FieldByName("IST")->AsInteger;
      if (DB1->FieldByName("BSUMMA")->AsInteger>=0) bsumma=DB1->FieldByName("BSUMMA")->AsInteger;
      if (!DB1->FieldByName("BWORD")->AsString.IsEmpty()) bword = DB1->FieldByName("BWORD")->AsString;
      if (DB1->FieldByName("FAKT_CHEL")->AsInteger>=0) fakt_chel=DB1->FieldByName("FAKT_CHEL")->AsInteger;
      if (DB1->FieldByName("FAKT_DAT")->AsInteger>=0) fakt_dat=DB1->FieldByName("FAKT_DAT")->AsInteger;
      if (DB1->FieldByName("NSP")->AsInteger>=0) nsp=DB1->FieldByName("NSP")->AsInteger;
      if (!DB1->FieldByName("KEM_VID")->AsString.IsEmpty()) kem_vid = DB1->FieldByName("KEM_VID")->AsString;
      data_vid=DB1->FieldByName("DATA_VID")->AsDateTime;
      if (DB1->FieldByName("M")->AsInteger>0) mn=DB1->FieldByName("M")->AsInteger;
      if (DB1->FieldByName("Y")->AsInteger>0) yn=DB1->FieldByName("Y")->AsInteger;
      if (DB1->FieldByName("KODPEN")->AsInteger>=0) kodpen=DB1->FieldByName("KODPEN")->AsInteger;
      if (DB1->FieldByName("FOND")->AsInteger>=0) fond=DB1->FieldByName("FOND")->AsInteger;
      if (DB1->FieldByName("KASSA")->AsInteger>=0) kassa=DB1->FieldByName("KASSA")->AsInteger;


      TQ->Close();
      TQ->SQL->Clear();
      sql="insert into SGB_A";
      sql+="(ORG_ID,COUNT_DATE,COUNT_NUMBER,\
      LCHET1,SUMMA,WORD,METKA,NEOPL,PNN,LCHET,FAMILY,NAME,\
      FATHER,KOD,C,DOC,SERIA,NOMER,DOST,D_VIPL,ULIC,ADRES,CHEL,METKA1,VNOM,PRICH,IST,BSUMMA,";
      sql+="BWORD,FAKT_CHEL,FAKT_DAT,NSP,KEM_VID,DATA_VID,M,Y,KODPEN,FOND,KASSA) values(";
      sql+=IntToStr(org_id);
      sql+=",'"+count_date.DateString()+"'";
      sql+=","+IntToStr(count_number)+",'";;
      sql+=lchet1.Trim()+"',";
      sql+=AnsiString().sprintf("%.02lf",summa)+",'";
      sql+=word.Trim()+"',";
      sql+=IntToStr(metka)+",";
      sql+=IntToStr(neopl)+",";
      sql+=IntToStr(pnn)+",";
      sql+=IntToStr(lchet)+",'";
      sql+=family.Trim()+"','";
      sql+=name.Trim()+"','";
      sql+=father.Trim()+"',";
      sql+=IntToStr(kod)+",'";
      sql+=c.DateString()+"','";
      sql+=doc.DateString()+"','";
      sql+=seria.Trim()+"',";
      sql+=IntToStr(nomer)+",";
      sql+=IntToStr(dost)+",";
      sql+=IntToStr(d_vipl)+",'";
      sql+=ulic.Trim()+"','";
      sql+=adres.Trim()+"',";
      sql+=IntToStr(chel)+",";
      sql+=IntToStr(metka1)+",";
      sql+=IntToStr(vnom)+",'";
      sql+=prich.Trim()+"',";
      sql+=IntToStr(ist)+",";
      sql+=AnsiString().sprintf("%.02lf",bsumma)+",'";
      sql+=bword.Trim()+"',";
      sql+=IntToStr(fakt_chel)+",";
      sql+=IntToStr(fakt_dat)+",";
      sql+=IntToStr(nsp)+",'";
      sql+=kem_vid.Trim()+"','";
      sql+=data_vid.DateString()+"',";
      sql+=IntToStr(mn);
      sql+=","+IntToStr(yn)+",";
      sql+=IntToStr(kodpen)+",";
      sql+=IntToStr(fond)+",";
      sql+=IntToStr(kassa)+")";

      TQ->SQL->Add(sql);
      try
      {
        TQ->ExecQuery();
        Indicator->Progress = ns;
      }
      catch (Exception &exc)
      { MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
        TQ->Transaction->Rollback();
        return;
      }
    TQ->Transaction->Commit();
    DB1->Next();
    ns++;
  }
  DB1->Close();
  str="���������� ������� � ����� SGB_A - " + IntToStr(ns);
  Memo->Lines->Add(str);

  //�������� ����������
  TQ->Transaction->StartTransaction();
  TQ->Close();
  TQ->SQL->Clear();
  sql="delete from SGB where ";
  sql+=" M=" + IntToStr(ml);
  sql+=" and Y=" + IntToStr(yl);
  TQ->SQL->Add(sql);
  try
  {
  TQ->ExecQuery();
  }
  catch (Exception &exc)
  {
   MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
   TQ->Transaction->Rollback();
   return;
  }
  TQ->Transaction->Commit();



// ������ ������� D_PRINT

  if(dbfFile!=NULL) delete dbfFile;
  AnsiString nf=MainForm->WorkDir+"Import\\d_print.dbf";
  dbfFile=new DBF_File(nf);
    if(dbfFile->SuccessFLG)
    {
      Memo->Lines->Add("DBF ���� d_print.dbf ������� ������!");
      Memo->Lines->Add("��� ����� - "+IntToStr(unsigned(dbfFile->FH.FileTyp)));
      Memo->Lines->Add("��� - "+IntToStr(unsigned(dbfFile->FH.Year)+2000));
      Memo->Lines->Add("����� - "+IntToStr(unsigned(dbfFile->FH.Mon)));
      Memo->Lines->Add("���� - "+IntToStr(unsigned(dbfFile->FH.Day)));
      Memo->Lines->Add("���������� ������� - "+IntToStr(dbfFile->FH.RecordQuantity));
      Memo->Lines->Add("����� ��������� - "+IntToStr(dbfFile->FH.HeadLength));
      Memo->Lines->Add("����� ������ - "+IntToStr(dbfFile->FH.RecordLength));
    }
    else
    {
    Memo->Lines->Add("������ �������� DBF �����!");
    return;
    }

  Indicator->MaxValue=dbfFile->FH.RecordQuantity;

  //�������� ����������
  TQ->Transaction->StartTransaction();
  TQ->Close();
  TQ->SQL->Clear();
  sql="delete from D_PRINT";
  TQ->SQL->Add(sql);
  try
  {
  TQ->ExecQuery();
  }
  catch (Exception &exc)
  {
   MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
   TQ->Transaction->Rollback();
   return;
  }
  TQ->Transaction->Commit();

  //�������� ����������
  TQ->Transaction->StartTransaction();
  for(int i=1; i<=dbfFile->FH.RecordQuantity; ++i)
    {
int lchet =0;
double summa1=0.00;
int ist1=0;
double summa2=0.00;
int ist2=0;
double summa3=0.00;
int ist3=0;
double summa4=0.00;
int ist4=0;
double summa5=0.00;
int ist5=0;
double summa6=0.00;
int ist6=0;
double summa7=0.00;
int ist7=0;
double summa8=0.00;
int ist8=0;
int lasttime=0;
int neopl=0;
int ist=0;
int metka=0;
int pnn=0;
AnsiString cd_dop="";

      if(dbfFile->RecordRead(i)==true)
      {
      if (!dbfFile->FieldToAnsiString(1).IsEmpty()) lchet =StrToInt(dbfFile->FieldToAnsiString(1));
      if (!dbfFile->FieldToAnsiString(2).IsEmpty()) summa1=StrToFloat(dbfFile->FieldToAnsiString(2));
      if (!dbfFile->FieldToAnsiString(3).IsEmpty()) ist1 =StrToInt(dbfFile->FieldToAnsiString(3));
      if (!dbfFile->FieldToAnsiString(4).IsEmpty()) summa2=StrToFloat(dbfFile->FieldToAnsiString(4));
      if (!dbfFile->FieldToAnsiString(5).IsEmpty()) ist2 =StrToInt(dbfFile->FieldToAnsiString(5));
      if (!dbfFile->FieldToAnsiString(6).IsEmpty()) summa3=StrToFloat(dbfFile->FieldToAnsiString(6));
      if (!dbfFile->FieldToAnsiString(7).IsEmpty()) ist3 =StrToInt(dbfFile->FieldToAnsiString(7));
      if (!dbfFile->FieldToAnsiString(8).IsEmpty())  summa4=StrToFloat(dbfFile->FieldToAnsiString(8));
      if (!dbfFile->FieldToAnsiString(9).IsEmpty()) ist4 =StrToInt(dbfFile->FieldToAnsiString(9));
      if (!dbfFile->FieldToAnsiString(10).IsEmpty()) summa5=StrToFloat(dbfFile->FieldToAnsiString(10));
      if (!dbfFile->FieldToAnsiString(11).IsEmpty()) ist5 =StrToInt(dbfFile->FieldToAnsiString(11));
      if (!dbfFile->FieldToAnsiString(12).IsEmpty()) summa6=StrToFloat(dbfFile->FieldToAnsiString(12));
      if (!dbfFile->FieldToAnsiString(13).IsEmpty()) ist6 =StrToInt(dbfFile->FieldToAnsiString(13));
      if (!dbfFile->FieldToAnsiString(14).IsEmpty()) summa7=StrToFloat(dbfFile->FieldToAnsiString(14));
      if (!dbfFile->FieldToAnsiString(15).IsEmpty()) ist7 =StrToInt(dbfFile->FieldToAnsiString(15));
      if (!dbfFile->FieldToAnsiString(16).IsEmpty()) summa8=StrToFloat(dbfFile->FieldToAnsiString(16));
      if (!dbfFile->FieldToAnsiString(17).IsEmpty()) ist8 =StrToInt(dbfFile->FieldToAnsiString(17));
      if (!dbfFile->FieldToAnsiString(18).IsEmpty()) lasttime =StrToInt(dbfFile->FieldToAnsiString(18));
      if (!dbfFile->FieldToAnsiString(19).IsEmpty()) neopl =StrToInt(dbfFile->FieldToAnsiString(19));
      if (!dbfFile->FieldToAnsiString(20).IsEmpty()) ist =StrToInt(dbfFile->FieldToAnsiString(20));
      if (!dbfFile->FieldToAnsiString(21).IsEmpty()) metka =StrToInt(dbfFile->FieldToAnsiString(21));
      if (!dbfFile->FieldToAnsiString(22).IsEmpty()) pnn =StrToInt(dbfFile->FieldToAnsiString(22));
      if (!dbfFile->FieldToAnsiString(23).IsEmpty()) cd_dop =dbfFile->FieldToAnsiString(23);
      }


      TQ->Close();
      TQ->SQL->Clear();
      sql="insert into D_PRINT(LCHET,SUMMA1,IST1,SUMMA2,IST2,SUMMA3,IST3,SUMMA4,IST4,\
SUMMA5,IST5,SUMMA6,IST6,SUMMA7,IST7,SUMMA8,IST8,LASTTIME,NEOPL,IST,METKA,PNN,CD_DOP) values(";
      sql+=IntToStr(lchet)+",";
      sql+=AnsiString().sprintf("%.02lf",summa1)+",";
      sql+=IntToStr(ist1)+",";
      sql+=AnsiString().sprintf("%.02lf",summa2)+",";
      sql+=IntToStr(ist2)+",";
      sql+=AnsiString().sprintf("%.02lf",summa3)+",";
      sql+=IntToStr(ist3)+",";
      sql+=AnsiString().sprintf("%.02lf",summa4)+",";
      sql+=IntToStr(ist4)+",";
      sql+=AnsiString().sprintf("%.02lf",summa5)+",";
      sql+=IntToStr(ist5)+",";
      sql+=AnsiString().sprintf("%.02lf",summa6)+",";
      sql+=IntToStr(ist6)+",";
      sql+=AnsiString().sprintf("%.02lf",summa7)+",";
      sql+=IntToStr(ist7)+",";
      sql+=AnsiString().sprintf("%.02lf",summa8)+",";
      sql+=IntToStr(ist8)+",";
      sql+=IntToStr(lasttime)+",";
      sql+=IntToStr(neopl)+",";
      sql+=IntToStr(ist)+",";
      sql+=IntToStr(metka)+",";
      sql+=IntToStr(pnn)+",'";
      sql+=cd_dop.Trim()+"')";
      TQ->SQL->Add(sql);
      try
      {
        TQ->ExecQuery();
        Indicator->Progress = i;
      }
      catch (Exception &exc)
      { MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
        TQ->Transaction->Rollback();
        return;
      }
    }

  TQ->Transaction->Commit();
  str="������������� � ���� �� d_print.dbf - " + IntToStr(dbfFile->FH.RecordQuantity) + " ������� ";
  Memo->Lines->Add(str);
  countzap=dbfFile->FH.RecordQuantity;

// ������ ������� sm_print

  if(dbfFile!=NULL) delete dbfFile;
  nf=MainForm->WorkDir+"Import\\sm_print.dbf";
  dbfFile=new DBF_File(nf);
    if(dbfFile->SuccessFLG)
    {
      Memo->Lines->Add("DBF ���� sm_print.dbf ������� ������!");
      Memo->Lines->Add("��� ����� - "+IntToStr(unsigned(dbfFile->FH.FileTyp)));
      Memo->Lines->Add("��� - "+IntToStr(unsigned(dbfFile->FH.Year)+2000));
      Memo->Lines->Add("����� - "+IntToStr(unsigned(dbfFile->FH.Mon)));
      Memo->Lines->Add("���� - "+IntToStr(unsigned(dbfFile->FH.Day)));
      Memo->Lines->Add("���������� ������� - "+IntToStr(dbfFile->FH.RecordQuantity));
      Memo->Lines->Add("����� ��������� - "+IntToStr(dbfFile->FH.HeadLength));
      Memo->Lines->Add("����� ������ - "+IntToStr(dbfFile->FH.RecordLength));
    }
    else Memo->Lines->Add("������ �������� DBF �����!");
    Indicator->MinValue=0;
    Indicator->MaxValue=dbfFile->FH.RecordQuantity;



  //�������� ����������
  TQ->Transaction->StartTransaction();
  TQ->Close();
  TQ->SQL->Clear();
  sql="delete from NDOST where M=";
  sql+=IntToStr(mi);
  sql+=" and Y=" + IntToStr(yi);
  TQ->SQL->Add(sql);
  try
  {
  TQ->ExecQuery();
  }
  catch (Exception &exc)
  {
   MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
   TQ->Transaction->Rollback();
   return;
  }
  TQ->Transaction->Commit();


  //�������� ����������
  TQ->Transaction->StartTransaction();
  for(int i=1; i<=dbfFile->FH.RecordQuantity; ++i)
    {
lchet1="";
summa=0.00;
word="";
metka =0;
neopl =0;
pnn =0;
lchet =0;
family="";
name="";
father="";
kod=0;
c=NULL;
doc=NULL;
seria="";
nomer =0;
dost=0;
d_vipl=0;
ulic="";
adres="";
chel=0;
metka1=0;
vnom=0;
prich="";
ist=0;
bsumma=0;
bword="";
fakt_chel=0;
fakt_dat=0;
nsp=0;
kem_vid="";
data_vid=NULL;
bufstr;
kodpen=0;
fond=0;

      if(dbfFile->RecordRead(i)==true)
      {
      if (!dbfFile->FieldToAnsiString(1).IsEmpty()) lchet1=AnsiString(Dos_to_Win(dbfFile->FieldToAnsiString(1).c_str()));
      if (!dbfFile->FieldToAnsiString(2).IsEmpty()) summa=StrToFloat(dbfFile->FieldToAnsiString(2));
      if (!dbfFile->FieldToAnsiString(3).IsEmpty()) word =AnsiString(Dos_to_Win(dbfFile->FieldToAnsiString(3).c_str()));
      if (!dbfFile->FieldToAnsiString(4).IsEmpty()) metka =StrToInt(dbfFile->FieldToAnsiString(4));
      if (!dbfFile->FieldToAnsiString(5).IsEmpty()) neopl =StrToInt(dbfFile->FieldToAnsiString(5));
      if (!dbfFile->FieldToAnsiString(9).IsEmpty()) pnn =StrToInt(dbfFile->FieldToAnsiString(9));
      if (!dbfFile->FieldToAnsiString(10).IsEmpty()) lchet =StrToInt(dbfFile->FieldToAnsiString(10));
      if (!dbfFile->FieldToAnsiString(12).IsEmpty()) dost =StrToInt(dbfFile->FieldToAnsiString(12));
      if (!dbfFile->FieldToAnsiString(11).IsEmpty()) d_vipl =StrToInt(dbfFile->FieldToAnsiString(11));
      if (!dbfFile->FieldToAnsiString(6).IsEmpty()) kodpen =StrToInt(dbfFile->FieldToAnsiString(6));
      if (!dbfFile->FieldToAnsiString(7).IsEmpty()) ist =StrToInt(dbfFile->FieldToAnsiString(7));
      if (!dbfFile->FieldToAnsiString(8).IsEmpty()) fond =StrToInt(dbfFile->FieldToAnsiString(8));
      }

      TQ->Close();
      TQ->SQL->Clear();
sql="insert into NDOST(LCHET1,SUMMA,WORD,METKA,NEOPL,PNN,LCHET,FAMILY,NAME,\
FATHER,KOD,C,DOC,SERIA,NOMER,DOST,D_VIPL,ULIC,ADRES,CHEL,METKA1,VNOM,PRICH,IST,BSUMMA,";
      sql+="BWORD,FAKT_CHEL,FAKT_DAT,NSP,KEM_VID,DATA_VID,DOBAVL,KODPEN,FOND,M,Y) values('";
      sql+=lchet1.Trim()+"',";
      sql+=AnsiString().sprintf("%.02lf",summa)+",'";
      sql+=word.Trim()+"',";
      sql+=IntToStr(metka)+",";
      sql+=IntToStr(neopl)+",";
      sql+=IntToStr(pnn)+",";
      sql+=IntToStr(lchet)+",'";
      sql+=family.Trim()+"','";
      sql+=name.Trim()+"','";
      sql+=father.Trim()+"',";
      sql+=IntToStr(kod)+",'";
      sql+=c.DateString()+"','";
      sql+=doc.DateString()+"','";
      sql+=seria.Trim()+"',";
      sql+=IntToStr(nomer)+",";
      sql+=IntToStr(dost)+",";
      sql+=IntToStr(d_vipl)+",'";
      sql+=ulic.Trim()+"','";
      sql+=adres.Trim()+"',";
      sql+=IntToStr(chel)+",";
      sql+=IntToStr(metka1)+",";
      sql+=IntToStr(i)+",'";
      sql+=prich.Trim()+"',";
      sql+=IntToStr(ist)+",";
      sql+=AnsiString().sprintf("%.02lf",bsumma)+",'";
      sql+=bword.Trim()+"',";
      sql+=IntToStr(fakt_chel)+",";
      sql+=IntToStr(fakt_dat)+",";
      sql+=IntToStr(nsp)+",'";
      sql+=kem_vid.Trim()+"','";
      sql+=data_vid.DateString()+"',0,";
      sql+=IntToStr(kodpen)+",";
      sql+=IntToStr(fond)+",";
      sql+=IntToStr(mi)+",";
      sql+=IntToStr(yi)+")";

      TQ->SQL->Add(sql);
      try
      {
        TQ->ExecQuery();
        Indicator->Progress = i;
      }
      catch (Exception &exc)
      { MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
        TQ->Transaction->Rollback();
        return;
      }
    }

  TQ->Transaction->Commit();
  str="������������� � ���� �� sm_print.dbf - " + IntToStr(dbfFile->FH.RecordQuantity) + " ������� ";
  Memo->Lines->Add(str);
  countzap+=dbfFile->FH.RecordQuantity;

// ������ ������� db1

  if(dbfFile!=NULL) delete dbfFile;
  nf=MainForm->WorkDir+"Import\\db1.dbf";
  dbfFile=new DBF_File(nf);
    if(dbfFile->SuccessFLG)
    {
      Memo->Lines->Add("DBF ���� db1.dbf ������� ������!");
      Memo->Lines->Add("��� ����� - "+IntToStr(unsigned(dbfFile->FH.FileTyp)));
      Memo->Lines->Add("��� - "+IntToStr(unsigned(dbfFile->FH.Year)+2000));
      Memo->Lines->Add("����� - "+IntToStr(unsigned(dbfFile->FH.Mon)));
      Memo->Lines->Add("���� - "+IntToStr(unsigned(dbfFile->FH.Day)));
      Memo->Lines->Add("���������� ������� - "+IntToStr(dbfFile->FH.RecordQuantity));
      Memo->Lines->Add("����� ��������� - "+IntToStr(dbfFile->FH.HeadLength));
      Memo->Lines->Add("����� ������ - "+IntToStr(dbfFile->FH.RecordLength));
    }
    else Memo->Lines->Add("������ �������� DBF �����!");

    Indicator->MinValue=0;
    Indicator->MaxValue=dbfFile->FH.RecordQuantity;

  //�������� ����������
  TQ->Transaction->StartTransaction();
  TQ->Close();
  TQ->SQL->Clear();
  sql="delete from DB1";
  TQ->SQL->Add(sql);
  try
  {
  TQ->ExecQuery();
  }
  catch (Exception &exc)
  {
   MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
   TQ->Transaction->Rollback();
   return;
  }
  TQ->Transaction->Commit();


  //�������� ����������
  TQ->Transaction->StartTransaction();
  for(int i=1; i<=dbfFile->FH.RecordQuantity; ++i)
    {
AnsiString family="";
AnsiString name="";
AnsiString father="";
int street=0;
int lchet =0;
int house=0;
AnsiString korp="";
AnsiString flat="";
TDateTime c=NULL;
TDateTime doc=NULL;
AnsiString seria="";
int nomer =0;
AnsiString st="";
int post=0;
int dost=0;

      if(dbfFile->RecordRead(i)==true)
      {
      if (!dbfFile->FieldToAnsiString(1).IsEmpty()) lchet =StrToInt(dbfFile->FieldToAnsiString(1));
      if (!dbfFile->FieldToAnsiString(4).IsEmpty()) family=AnsiString(Dos_to_Win(dbfFile->FieldToAnsiString(4).c_str()));
      if (!dbfFile->FieldToAnsiString(5).IsEmpty()) name =AnsiString(Dos_to_Win(dbfFile->FieldToAnsiString(5).c_str()));
      if (!dbfFile->FieldToAnsiString(6).IsEmpty()) father =AnsiString(Dos_to_Win(dbfFile->FieldToAnsiString(6).c_str()));
      if (!dbfFile->FieldToAnsiString(8).IsEmpty()) street =StrToInt(dbfFile->FieldToAnsiString(8));
      if (!dbfFile->FieldToAnsiString(9).IsEmpty())  house =StrToInt(dbfFile->FieldToAnsiString(9));
      if (!dbfFile->FieldToAnsiString(10).IsEmpty()) korp=AnsiString(Dos_to_Win(dbfFile->FieldToAnsiString(10).c_str()));
      if (!dbfFile->FieldToAnsiString(11).IsEmpty()) flat =AnsiString(Dos_to_Win(dbfFile->FieldToAnsiString(11).c_str()));
      if (!dbfFile->FieldToAnsiString(13).IsEmpty()) c =AStoDT(dbfFile->FieldToAnsiString(13));
      if (!dbfFile->FieldToAnsiString(14).IsEmpty()) doc =AStoDT(dbfFile->FieldToAnsiString(14));
      if (!dbfFile->FieldToAnsiString(19).IsEmpty()) seria =AnsiString(Dos_to_Win(dbfFile->FieldToAnsiString(19).c_str()));
      if (!dbfFile->FieldToAnsiString(20).IsEmpty())  nomer =StrToInt(dbfFile->FieldToAnsiString(20));
      if (!dbfFile->FieldToAnsiString(48).IsEmpty())  st =AnsiString(Dos_to_Win(dbfFile->FieldToAnsiString(48).c_str()));
      if (!dbfFile->FieldToAnsiString(12).IsEmpty())  post =StrToInt(dbfFile->FieldToAnsiString(12));
      if (!dbfFile->FieldToAnsiString(21).IsEmpty())  dost =StrToInt(dbfFile->FieldToAnsiString(21));
      }

      TQ->Close();
      TQ->SQL->Clear();
sql="insert into DB1(LCHET,FAMILY,NAME,FATHER,STREET,HOUSE,KORP,FLAT,\
C,DOC,SERIA,NOMER,ST,POST,DOST) values(";
      sql+=IntToStr(lchet)+",'";
      sql+=family.Trim()+"','";
      sql+=name.Trim()+"','";
      sql+=father.Trim()+"',";
      sql+=IntToStr(street)+",";
      sql+=IntToStr(house)+",'";
      sql+=korp.Trim()+"','";
      sql+=flat.Trim()+"','";
      sql+=c.DateString()+"','";
      sql+=doc.DateString()+"','";
      sql+=seria.Trim()+"',";
      sql+=IntToStr(nomer)+",'";
      sql+=st.Trim()+"',";
      sql+=IntToStr(post)+",";
      sql+=IntToStr(dost)+")";
      TQ->SQL->Add(sql);
      try
      {
        TQ->ExecQuery();
        Indicator->Progress = i;
      }
      catch (Exception &exc)
      { MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
        TQ->Transaction->Rollback();
        return;
      }
    }

  TQ->Transaction->Commit();
  str="������������� � ���� �� db1.dbf - " + IntToStr(dbfFile->FH.RecordQuantity) + " ������� ";
  Memo->Lines->Add(str);
  countzap+=dbfFile->FH.RecordQuantity;
  str="���� ������� ������ � ������ ������!!! ������� ��������� �������� � �����!!! ";
  Memo->Lines->Add(str);

// ��������� �������

family="";
name="";
father="";
int street=0;
lchet =0;
int house=0;
AnsiString korp="";
AnsiString flat="";
c=NULL;
doc=NULL;
seria="";
nomer =0;
AnsiString st="";
AnsiString adresl="";
int post=0;
AnsiString IndOPS;
dost=0;
metka1=0;
chel=0;
int neobr=0;

  DB1->Close();
  DB1->SQLs->SelectSQL->Clear();
  sql="select * from DB1";
  DB1->SQLs->SelectSQL->Add(sql);
  try
  {
    DB1->Open();
  }
  catch(const Exception &exc)
  {
    MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
  }
  DB1->Last();
  Indicator->MinValue=0;
  Indicator->MaxValue=DB1->RecordCount;

  DB1->First();
  ns=0;
  while(!DB1->Eof)
  {
      AnsiString fff=IntToStr(DB1->FieldByName("LCHET")->AsInteger);
      if (!DB1->FieldByName("FAMILY")->AsString.IsEmpty()) family = DB1->FieldByName("FAMILY")->AsString;
      if (!DB1->FieldByName("NAME")->AsString.IsEmpty()) name = DB1->FieldByName("NAME")->AsString;
      if (!DB1->FieldByName("FATHER")->AsString.IsEmpty()) father = DB1->FieldByName("FATHER")->AsString;
      if (DB1->FieldByName("STREET")->AsInteger>0) street=DB1->FieldByName("STREET")->AsInteger;
      if (DB1->FieldByName("HOUSE")->AsInteger>0) adresl=IntToStr(DB1->FieldByName("HOUSE")->AsInteger);
      if (!DB1->FieldByName("KORP")->AsString.IsEmpty()) adresl+="/"+DB1->FieldByName("KORP")->AsString;
      if (!DB1->FieldByName("FLAT")->AsString.IsEmpty()) adresl+="-"+DB1->FieldByName("FLAT")->AsString;
      c=DB1->FieldByName("C")->AsDateTime;
      doc=DB1->FieldByName("DOC")->AsDateTime;
      if (!DB1->FieldByName("SERIA")->AsString.IsEmpty()) seria = DB1->FieldByName("SERIA")->AsString;
      if (DB1->FieldByName("NOMER")->AsInteger>0) nomer=DB1->FieldByName("NOMER")->AsInteger;
      if (!DB1->FieldByName("ST")->AsString.IsEmpty()) st = DB1->FieldByName("ST")->AsString;
      if (DB1->FieldByName("POST")->AsInteger>0) post=DB1->FieldByName("POST")->AsInteger;
      if (DB1->FieldByName("DOST")->AsInteger>0) dost=DB1->FieldByName("DOST")->AsInteger;

      TempQuery->Close();
      TempQuery->SQL->Clear();
      sql="select DESCRIPTION from NOMENCLATURE where REC_TYPE=0 and INDEXOPS="+IntToStr(post);
      TempQuery->SQL->Add(sql);
      try
      {
       TempQuery->ExecQuery();
      }
      catch(const Exception &exc)
      {
        MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
      }
      if (TempQuery->RecordCount>0)
      {
      IndOPS=TempQuery->FieldByName("DESCRIPTION")->AsString.SubString(4,255);
      if (!IndOPS.IsEmpty()) metka1=StrToInt(IndOPS);
      // ���������� ����������
       TempQuery->Close();
       TempQuery->SQL->Clear();
       sql="select CODP from NOMENCLATURE where REC_TYPE=1 and DESCRIPTION='"+IntToStr(dost)+"' and INDEXOPS="+IntToStr(metka1);
       TempQuery->SQL->Add(sql);
       try
       {
       TempQuery->ExecQuery();
       }
       catch(const Exception &exc)
       {
        MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
       }
       if (TempQuery->RecordCount>0)
       {
       chel=TempQuery->FieldByName("CODP")->AsInteger;
       }else
       {
        TempQuery->Close();
        TempQuery->SQL->Clear();
        sql="select ID from EI where DESCRIPTION NOT STARTING WITH '�����'";
        TempQuery->SQL->Add(sql);
        try
        {
        TempQuery->ExecQuery();
        }
        catch(const Exception &exc)
        {
        MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
        }
        if (TempQuery->RecordCount>0)
        {
        chel=TempQuery->FieldByName("ID")->AsInteger;
        }else
        {
        dat();
        return;
        }
       }

      TQ->Transaction->StartTransaction();
      TQ->Close();
      TQ->SQL->Clear();
      sql="update NDOST set";
      sql+=" FAMILY='"+family+"',";
      sql+=" NAME='"+name+"',";
      sql+=" FATHER='"+father+"',";
      sql+=" KOD="+IntToStr(street)+",";
      sql+=" C='"+c.DateString()+"',";
      sql+=" DOC='"+doc.DateString()+"',";
      sql+=" SERIA='"+seria+"',";
      sql+=" NOMER="+IntToStr(nomer)+",";
      sql+=" ULIC='"+st+"',";
      sql+=" ADRES='"+adresl+"',";
      sql+=" CHEL="+IntToStr(chel)+",";
      sql+=" METKA1="+IntToStr(metka1);
      sql+=" where LCHET="+fff.Trim();
      TQ->SQL->Add(sql);
      try
      {
        TQ->ExecQuery();
        Indicator->Progress = ns;
      }
      catch (Exception &exc)
      {
        MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
        TQ->Transaction->Rollback();
      }
      TQ->Transaction->Commit();

      }else
      {
      neobr++;
  //�������� ����������
  TQ->Transaction->StartTransaction();
  TQ->Close();
  TQ->SQL->Clear();
  sql="delete from NDOST ";
  sql+=" where LCHET="+fff.Trim();
  sql+=" and M=" + IntToStr(mi);
  sql+=" and Y=" + IntToStr(yi);
  TQ->SQL->Add(sql);
  try
  {
  TQ->ExecQuery();
  }
  catch (Exception &exc)
  {
   MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
   TQ->Transaction->Rollback();
   return;
  }
  TQ->Transaction->Commit();
      }
    DB1->Next();
    ns++;
  }

  DB1->Close();
  str="���������� �������:" + IntToStr(ns);
  Memo->Lines->Add(str);


// ��������� � ������ ������� �������� ������ �� �������

  TDateTime dt=Date();
  dt.DecodeDate(&y,&m,&d);

  TQ->Close();
  TQ->SQL->Clear();
  sql="insert into IMPORT_DOCUMENTS_TABLE (ID,ID_NUMBER,SUMZAP,ID_DATE) values(GEN_ID(GEN_IMPORT_DOCUMENTS_TABLE_ID,1),'���������� ����� d_print.dbf,sm_print.dbf,db1.dbf',"+IntToStr(countzap)+",'"+dt.DateString()+"')";
  TQ->SQL->Add(sql);
  TQ->Transaction->StartTransaction();
  try
  {
    TQ->ExecQuery();
  }
  catch(const Exception &exc)
  {
  MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
  TQ->Transaction->Rollback();
  }
  TQ->Transaction->Commit();

  TpFIBQuery * TQJ=SaleBookDM->TempQuery;

  TQJ->Close();
  TQJ->SQL->Clear();
  str="select GEN_ID(GEN_ACTIONS_JOURNAL_ID,1) as ID from RDB$DATABASE";
  TQJ->SQL->Add(str);
  try
  {
    TQJ->ExecQuery();
  }
  catch(const Exception &exc)
  {
    MessageDlg("������ select GEN_ID(GEN_ACTIONS_JOURNAL_ID,1) as ID from RDB$DATABASE\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
    return;
  }
  int id=TQJ->FieldByName("ID")->AsInteger;
  TQJ->Close();
  str="���������� ������ ������ �� d_print.dbf,db1.dbf,sm_print.dbf";
  SaleBookDM->TT->StartTransaction();
  if(SaleBookDM->AddRecordToActionsJournal(AddImport,str,SaleBookDM->TT)==true)
    SaleBookDM->TT->Commit();
  else SaleBookDM->TT->Rollback();

  if (mi==1) dt=TDateTime(yi,1,23); else dt=TDateTime(y,mi,23);
  SaleBookDM->SetConstValue(SaleBookDM->OrganizationID,"LOCK_EDIT_DATE",dt.DateString());

  str="������ � ���� ������ dbf ������� �������� !!! ����� ������������� �������:" + IntToStr(countzap) + " ������� ";
  Memo->Lines->Add(str);
  if (neobr>0)
  {
  str="�� ��� ��������� ��������������� " + IntToStr(neobr) + " ������� ";
  Memo->Lines->Add(str);
  }
  nf=MainForm->WorkDir+"Import\\d_print.dbf";
  DeleteFile(nf.c_str());
  nf=MainForm->WorkDir+"Import\\db1.dbf";
  DeleteFile(nf.c_str());
  nf=MainForm->WorkDir+"Import\\sm_print.dbf";
  DeleteFile(nf.c_str());
  str="�������� ������� dbf ������� ������� !!!";
  Memo->Lines->Add(str);
  Indicator->Visible = false;

  SaleBookDM->SetConstValue(SaleBookDM->OrganizationID,"LOCK_WORK_DATE","0");
  MessageDlg("�� �������!!!",mtError,TMsgDlgButtons() << mbOK,0);
  MainForm->MainStatusBar->Panels->Items[4]->Text="���� �������!!! ";
  MainForm->MainStatusBar->Color=clWindow;
  SaleBookDM->ConnectToDataBase();


  CloseButton->Enabled=true;
  LoadButton->Enabled=false;
}
//---------------------------------------------------------------------------

bool __fastcall TImportFrom1CForm::Filedate(AnsiString NF)
{
FILE *stream;
std::ftime ft;
TDateTime tt;
TDateTime today;
AnsiString result,resD,resM;
int yearf,monthf,dayf;
int yeart,montht,dayt;

today=Date();

if ((stream=fopen(NF.c_str(),"r")) == NULL)
{
result="notdated";
return false;
}

getftime(fileno(stream),&ft);
fclose(stream);
tt=EncodeDate(ft.ft_year+1980,ft.ft_month,ft.ft_day);
dayf=DayOf(tt);
monthf=MonthOf(tt);
yearf=YearOf(tt);
dayt=DayOf(today);
montht=MonthOf(today);
yeart=YearOf(today);


if (monthf==montht && yearf==yeart)
{
return true;
}
else
{
return false;
}

}
void __fastcall TImportFrom1CForm::FormClose(TObject *Sender,
      TCloseAction &Action)
{
  if(countzap==0) ModalResult = mrCancel; else ModalResult = mrOk;
}
//---------------------------------------------------------------------------
void __fastcall TImportFrom1CForm::dat(void)
{
AnsiString sql;
unsigned short yi,mi,di;

  TDateTime dti=Date();
  dti.DecodeDate(&yi,&mi,&di);
  if (mi==12)
  {
  mi=1;
  yi++;
  }else
  {
  mi++;
  }


      TQ->Transaction->StartTransaction();
      TQ->Close();
      TQ->SQL->Clear();
      sql="delete from D_PRINT";
      TQ->SQL->Add(sql);
      try
      {
      TQ->ExecQuery();
      }
      catch (Exception &exc)
      {
      MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
      TQ->Transaction->Rollback();
      return;
      }
      TQ->Transaction->Commit();

      TQ->Transaction->StartTransaction();
      TQ->Close();
      TQ->SQL->Clear();
      sql="delete from DB1";
      TQ->SQL->Add(sql);
      try
      {
      TQ->ExecQuery();
      }
      catch (Exception &exc)
      {
      MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
      TQ->Transaction->Rollback();
      return;
      }
      TQ->Transaction->Commit();

      TQ->Transaction->StartTransaction();
      TQ->Close();
      TQ->SQL->Clear();
      sql="delete from NDOST where M=";
      sql+=IntToStr(mi);
      sql+="and Y=" + IntToStr(yi);
      TQ->SQL->Add(sql);
      try
      {
      TQ->ExecQuery();
      }
      catch (Exception &exc)
      {
      MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
      TQ->Transaction->Rollback();
      return;
      }
      TQ->Transaction->Commit();
      AnsiString str=" ������� dbf �� �������� !!! ";
      Memo->Lines->Add(str);
      countzap=0;
      CloseButton->Enabled=true;
}

void __fastcall TImportFrom1CForm::UndoButtonClick(TObject *Sender)
{
AnsiString sql,str;
unsigned short y,m,d;
unsigned short yi,mi,di;
TDateTime lockDate;
unsigned short yl,ml,dl;


  lockDate=SaleBookDM->GetConstValue(SaleBookDM->OrganizationID,"LOCK_EDIT_DATE");
  lockDate.DecodeDate(&yl,&ml,&dl);
  UndoButton->Enabled=false;

  TDateTime dti=Date()-5;
  dti.DecodeDate(&yi,&mi,&di);
  mi=ml;
  yi=yl;

  SaleBookDM->SetConstValue(SaleBookDM->OrganizationID,"LOCK_WORK_DATE","1");
  MessageDlg("�� �������!!!",mtError,TMsgDlgButtons() << mbOK,0);
  MainForm->MainStatusBar->Panels->Items[4]->Text="���� ������� �� ����� ������� ����� ��������� ����!!! ";
  MainForm->MainStatusBar->Color=clRed;
  SaleBookDM->ConnectToDataBase();


  countzap=0;
  CloseButton->Enabled=false;
  LoadButton->Enabled=false;
  Indicator->Visible = false;
  Indicator->MinValue=0;


  //�������� ����������
  TQ->Transaction->StartTransaction();
  TQ->Close();
  TQ->SQL->Clear();
  sql="delete from D_PRINT";
  TQ->SQL->Add(sql);
  try
  {
  TQ->ExecQuery();
  }
  catch (Exception &exc)
  {
   MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
   TQ->Transaction->Rollback();
   return;
  }
  TQ->Transaction->Commit();


  //�������� ����������
  TQ->Transaction->StartTransaction();
  TQ->Close();
  TQ->SQL->Clear();
  sql="delete from NDOST where M=";
  sql+=IntToStr(mi);
  sql+=" and Y=" + IntToStr(yi);
  TQ->SQL->Add(sql);
  try
  {
  TQ->ExecQuery();
  }
  catch (Exception &exc)
  {
   MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
   TQ->Transaction->Rollback();
   return;
  }
  TQ->Transaction->Commit();

  //�������� ����������
  TQ->Transaction->StartTransaction();
  TQ->Close();
  TQ->SQL->Clear();
  sql="delete from DB1";
  TQ->SQL->Add(sql);
  try
  {
  TQ->ExecQuery();
  }
  catch (Exception &exc)
  {
   MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
   TQ->Transaction->Rollback();
   return;
  }
  TQ->Transaction->Commit();




// ��������� � ������ ������� �������� ������ �� �������

  TDateTime dt=Date();
  dt.DecodeDate(&y,&m,&d);

  TQ->Close();
  TQ->SQL->Clear();
  sql="insert into IMPORT_DOCUMENTS_TABLE (ID,ID_NUMBER,SUMZAP,ID_DATE) values(GEN_ID(GEN_IMPORT_DOCUMENTS_TABLE_ID,1),'����� ��������� ��������� �� ��� �������',"+IntToStr(countzap)+",'"+dt.DateString()+"')";
  TQ->SQL->Add(sql);
  TQ->Transaction->StartTransaction();
  try
  {
    TQ->ExecQuery();
  }
  catch(const Exception &exc)
  {
  MessageDlg("������ - "+sql+"\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
  TQ->Transaction->Rollback();
  }
  TQ->Transaction->Commit();

  TpFIBQuery * TQJ=SaleBookDM->TempQuery;

  TQJ->Close();
  TQJ->SQL->Clear();
  str="select GEN_ID(GEN_ACTIONS_JOURNAL_ID,1) as ID from RDB$DATABASE";
  TQJ->SQL->Add(str);
  try
  {
    TQJ->ExecQuery();
  }
  catch(const Exception &exc)
  {
    MessageDlg("������ select GEN_ID(GEN_ACTIONS_JOURNAL_ID,1) as ID from RDB$DATABASE\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
    return;
  }
  int id=TQJ->FieldByName("ID")->AsInteger;
  TQJ->Close();
  str="���������� ����� ������� ������ �� d_print.dbf,db1.dbf,sm_print.dbf";
  SaleBookDM->TT->StartTransaction();
  if(SaleBookDM->AddRecordToActionsJournal(AddImport,str,SaleBookDM->TT)==true)
    SaleBookDM->TT->Commit();
  else SaleBookDM->TT->Rollback();

  if (mi==1) dt=TDateTime(yi-1,12,23); else dt=TDateTime(y,mi-1,23);
  SaleBookDM->SetConstValue(SaleBookDM->OrganizationID,"LOCK_EDIT_DATE",dt.DateString());

  str="����� ������� � ���� ������ dbf ������� �������� !!! ";
  Memo->Lines->Add(str);

  SaleBookDM->SetConstValue(SaleBookDM->OrganizationID,"LOCK_WORK_DATE","0");
  MessageDlg("�� �������!!!",mtError,TMsgDlgButtons() << mbOK,0);
  MainForm->MainStatusBar->Panels->Items[4]->Text="���� �������!!! ";
  MainForm->MainStatusBar->Color=clWindow;
  SaleBookDM->ConnectToDataBase();

  Indicator->Visible = false;
  CloseButton->Enabled=true;
  LoadButton->Enabled=false;
  UndoButton->Enabled=false;

}
//---------------------------------------------------------------------------

void __fastcall TImportFrom1CForm::SendButtonClick(TObject *Sender)
{
AnsiString str;
TpFIBQuery * TQJ=SaleBookDM->TempQuery;
AnsiString s;
const int olMailItem = 0;
Variant MSOApp;
Variant myItem;


  if(SaleBookDM->MF==NULL)
  {
    try
    {
      SaleBookDM->MF=new TSMTPMessageForm(this);
    }
    catch(const Exception &exc)
    {
      MessageDlg("������ �������� ����� TSMTPMessageForm"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
      return;
    }
    if(SaleBookDM->MF!=NULL)
    {
    SaleBookDM->MF->Show();
    SaleBookDM->MF->StatusBar->SimpleText="���������� � ��������";
    try {
        MSOApp = CreateOleObject("Outlook.Application");
        SaleBookDM->MF->StatusBar->SimpleText="�������� ����������� � ������������� ��������� !!!";
        myItem = MSOApp.OleFunction("CreateItem", (Variant)olMailItem);
        myItem.OlePropertySet("Subject", "�������������� �����������!!! ");
        myItem.OlePropertyGet("Recipients").OleFunction("Add",
            WideString(SaleBookDM->GetConstValue(SaleBookDM->OrganizationID,"ADRESS_ADMIN",Date())));
        myItem.OlePropertySet("Body", WideString( " ������������!!! \
����� ��������� ���� �������� �� ��� � ������� ������������� � ���� �������� ��� ���������. ������ � ��������� ���.\
������ ����������� ������������ ������������� � �� ������� ������.\
�������!!!\
�������� ���� � �������!!!\
�����!!!"));
        myItem.OleProcedure("Send");
        SaleBookDM->MF->StatusBar->SimpleText="����������� � ������������� ��������� ���������� !!!";

        SaleBookDM->MF->StatusBar->SimpleText="�������� ����������� � ���� !!!";
        myItem = MSOApp.OleFunction("CreateItem", (Variant)olMailItem);
        myItem.OlePropertySet("Subject", "�������������� �����������!!! ");
        myItem.OlePropertyGet("Recipients").OleFunction("Add",
            WideString(SaleBookDM->GetConstValue(SaleBookDM->OrganizationID,"ADRESS_UFPS3",Date())));
        myItem.OlePropertySet("Body", WideString( " ������������ !!! \
����� ��������� ���� �� ������ ������ �������� ������� ������������� � ��� ��������� ��� ������������ ����������� ����� ��������� � ����� ��������� ������� ������ �����������.\
���������� ��������� ����� ��������� ���� � ��� ��������� ����� ������� ���� �� ������ � �������->�������� ���� ������ ����� ��������� �� ������ �������� � ���������� �� ������.\
����� ���� ���� �� ������� �������������� (����������� ������, �������� ������, ������������ � ��. ) � ����� ��������� ������������������ ����� � ������������������ ��!!!\
                ��� ������������� �������� ������� ������ ������������ �� ����� Igor.Lepeshkin@russianpost.ru .\
������ ����������� ������������ ������������� � �� ������� ������.\
������� �� �������� � ���������.\
����� ��� � ��������� ��� ����� � �� ���������\
�������� ���� � ����� �������!!!\
"));
        myItem.OleProcedure("Send");
        SaleBookDM->MF->StatusBar->SimpleText="����������� � ���� ���������� ������� !!!";


        MSOApp.OleFunction("Quit");
        SaleBookDM->MF->Close();
    }
    catch (EOleSysError& E) {
        ShowMessage(E.Message + " ������ ��������!!!");
        SaleBookDM->MF->Close();
    }
    }
  }

  if(SaleBookDM->MF!=NULL) SaleBookDM->MF->Close();

  TQJ->Close();
  TQJ->SQL->Clear();
  str="select GEN_ID(GEN_ACTIONS_JOURNAL_ID,1) as ID from RDB$DATABASE";
  TQJ->SQL->Add(str);
  try
  {
    TQJ->ExecQuery();
  }
  catch(const Exception &exc)
  {
    MessageDlg("������ select GEN_ID(GEN_ACTIONS_JOURNAL_ID,1) as ID from RDB$DATABASE\n"+exc.Message,mtError,TMsgDlgButtons() << mbOK,0);
    return;
  }
  int id=TQJ->FieldByName("ID")->AsInteger;
  TQJ->Close();
  str="���������� ����������� �� ��������� ����� ���� � ���� � ������������� ��������� !!! ";
  SaleBookDM->TT->StartTransaction();
  if(SaleBookDM->AddRecordToActionsJournal(SendNotice,str,SaleBookDM->TT)==true) SaleBookDM->TT->Commit(); else SaleBookDM->TT->Rollback();
  MessageDlg("����������� ������� ���������� !!! ",mtWarning,TMsgDlgButtons() << mbOK,0);

}
//---------------------------------------------------------------------------

