package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1875:IID;
      
      private var var_711:Boolean;
      
      private var var_1197:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1875 = param1;
         this.var_1197 = new Array();
         this.var_711 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1875;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_711;
      }
      
      public function get receivers() : Array
      {
         return this.var_1197;
      }
      
      public function dispose() : void
      {
         if(!this.var_711)
         {
            this.var_711 = true;
            this.var_1875 = null;
            while(this.var_1197.length > 0)
            {
               this.var_1197.pop();
            }
            this.var_1197 = null;
         }
      }
   }
}
