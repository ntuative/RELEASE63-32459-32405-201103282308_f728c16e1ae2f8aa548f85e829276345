package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2595:int;
      
      private var var_2594:int;
      
      private var var_2596:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2595 = param1;
         this.var_2594 = param2;
         this.var_2596 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2595,this.var_2594,this.var_2596];
      }
      
      public function dispose() : void
      {
      }
   }
}
