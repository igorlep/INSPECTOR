//---------------------------------------------------------------------------

#ifndef LockDateCheckerH
#define LockDateCheckerH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include "FIBQuery.hpp"
#include "pFIBQuery.hpp"

//---------------------------------------------------------------------------
class LockDateChecker : public TThread
{            
private:
protected:
  bool &terminateFLG;
  TpFIBQuery *RQ;
  int  currentLED;
  void __fastcall Execute();
  void __fastcall checkLED(void);
public:
  __fastcall LockDateChecker(bool CreateSuspended,bool &termFLG);
};
//---------------------------------------------------------------------------
#endif
