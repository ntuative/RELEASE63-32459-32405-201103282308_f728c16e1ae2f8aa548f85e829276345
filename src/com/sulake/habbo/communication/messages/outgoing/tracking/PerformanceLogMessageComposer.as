package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2464:int = 0;
      
      private var var_1410:String = "";
      
      private var var_1755:String = "";
      
      private var var_2445:String = "";
      
      private var var_2491:String = "";
      
      private var var_1790:int = 0;
      
      private var var_2492:int = 0;
      
      private var var_2493:int = 0;
      
      private var var_1407:int = 0;
      
      private var var_2490:int = 0;
      
      private var var_1408:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2464 = param1;
         this.var_1410 = param2;
         this.var_1755 = param3;
         this.var_2445 = param4;
         this.var_2491 = param5;
         if(param6)
         {
            this.var_1790 = 1;
         }
         else
         {
            this.var_1790 = 0;
         }
         this.var_2492 = param7;
         this.var_2493 = param8;
         this.var_1407 = param9;
         this.var_2490 = param10;
         this.var_1408 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2464,this.var_1410,this.var_1755,this.var_2445,this.var_2491,this.var_1790,this.var_2492,this.var_2493,this.var_1407,this.var_2490,this.var_1408];
      }
   }
}
