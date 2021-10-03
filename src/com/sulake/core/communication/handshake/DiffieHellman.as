package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1022:BigInteger;
      
      private var var_2287:BigInteger;
      
      private var var_1682:BigInteger;
      
      private var var_2288:BigInteger;
      
      private var var_1368:BigInteger;
      
      private var var_1683:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1368 = param1;
         this.var_1683 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1368.toString() + ",generator: " + this.var_1683.toString() + ",secret: " + param1);
         this.var_1022 = new BigInteger();
         this.var_1022.fromRadix(param1,param2);
         this.var_2287 = this.var_1683.modPow(this.var_1022,this.var_1368);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1682 = new BigInteger();
         this.var_1682.fromRadix(param1,param2);
         this.var_2288 = this.var_1682.modPow(this.var_1022,this.var_1368);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2287.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2288.toRadix(param1);
      }
   }
}
