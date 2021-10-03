package com.sulake.habbo.avatar.actions
{
   public class ActiveActionData implements IActiveActionData
   {
       
      
      private var var_1584:String = "";
      
      private var _actionParameter:String = "";
      
      private var var_1173:IActionDefinition;
      
      private var var_2558:int = 0;
      
      private var var_2557:String;
      
      public function ActiveActionData(param1:String, param2:String = "", param3:int = 0)
      {
         super();
         this.var_1584 = param1;
         this._actionParameter = param2;
         this.var_2558 = param3;
      }
      
      public function get actionType() : String
      {
         return this.var_1584;
      }
      
      public function get actionParameter() : String
      {
         return this._actionParameter;
      }
      
      public function get definition() : IActionDefinition
      {
         return this.var_1173;
      }
      
      public function get id() : String
      {
         if(this.var_1173 == null)
         {
            return "";
         }
         return this.var_1173.id + "_" + this._actionParameter;
      }
      
      public function set actionParameter(param1:String) : void
      {
         this._actionParameter = param1;
      }
      
      public function set definition(param1:IActionDefinition) : void
      {
         this.var_1173 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1584 = null;
         this._actionParameter = null;
         this.var_1173 = null;
      }
      
      public function get startFrame() : int
      {
         return this.var_2558;
      }
      
      public function get overridingAction() : String
      {
         return this.var_2557;
      }
      
      public function set overridingAction(param1:String) : void
      {
         this.var_2557 = param1;
      }
   }
}
