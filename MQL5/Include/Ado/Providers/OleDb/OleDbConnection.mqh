//+------------------------------------------------------------------+
//|                                              OleDbConnection.mqh |
//|                                             Copyright GF1D, 2010 |
//|                                             garf1eldhome@mail.ru |
//+------------------------------------------------------------------+
#property copyright "GF1D, 2010"
#property link      "garf1eldhome@mail.ru"

#include "..\Base\DbConnection.mqh"
#include "OleDbTransaction.mqh"
//--------------------------------------------------------------------
/// \brief  \~russian 孰囫? 镱玮铍栝 篑蜞磬怆桠囹?镱潢膻麇龛??桉蝾黜桕?溧眄 OLE DB
///         \~english Represents a connection to an OLE DB data source
class COleDbConnection : public CDbConnection
  {
protected:
   virtual CDbTransaction *CreateTransaction() { return new COleDbTransaction(); }

public:
   /// \brief  \~russian 觐眈蝠箨蝾?
   ///         \~english constructor
                     COleDbConnection();
  };
//--------------------------------------------------------------------
COleDbConnection::COleDbConnection()
  {
   MqlTypeName("COleDbConnection");
   CreateClrObject("System.Data","System.Data.OleDb.OleDbConnection");
  }
//+------------------------------------------------------------------+
