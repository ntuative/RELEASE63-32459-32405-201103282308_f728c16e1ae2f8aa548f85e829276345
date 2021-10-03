package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2337:Number;
      
      private var var_1573:Number;
      
      private var var_912:Number;
      
      private var var_524:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2337 = param1;
         this.var_1573 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_912 = param1;
         this.var_524 = 0;
      }
      
      public function update() : void
      {
         this.var_912 += this.var_1573;
         this.var_524 += this.var_912;
         if(this.var_524 > 0)
         {
            this.var_524 = 0;
            this.var_912 = this.var_2337 * -1 * this.var_912;
         }
      }
      
      public function get location() : Number
      {
         return this.var_524;
      }
   }
}
