//---------------------------------------------------------------------------

#ifndef SelectPeriodH
#define SelectPeriodH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "Placemnt.hpp"
#include "SmrtPanel.h"
#include "ToolEdit.hpp"
#include <ExtCtrls.hpp>
#include <Mask.hpp>
#include <ComCtrls.hpp>
#include "CSPIN.h"
#include "JvComponent.hpp"
#include "JvExControls.hpp"
#include "JvXPButtons.hpp"
#include "JvXPCore.hpp"
//---------------------------------------------------------------------------
class TSelectPeriodForm : public TForm
{
__published:	// IDE-managed Components
        TSmrtPanel *SmrtPanel2;
        TJvXPButton *JXPBOK;
        TSmrtPanel *SmrtPanel1;
        TFormStorage *FormStorage;
        TLabel *Label1;
        TLabel *Label2;
        TEdit *D1;
        TJvXPButton *JvXPButton1;
        TEdit *D2;
        void __fastcall JXPBOKClick(TObject *Sender);
        void __fastcall JvXPButton1Click(TObject *Sender);
private:	// User declarations
        AnsiString iniFileName;
        int date1, date2;
public:		// User declarations
        __fastcall TSelectPeriodForm(TComponent* Owner, int date1, int date2);
        int __fastcall getDate1(void);
        int __fastcall getDate2(void);
};
//---------------------------------------------------------------------------
//extern PACKAGE TSelectPeriodForm *SelectPeriodForm;
//---------------------------------------------------------------------------
#endif
