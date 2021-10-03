package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_935:int;
      
      private var var_798:Boolean;
      
      private var var_1678:Boolean;
      
      private var var_618:String;
      
      private var var_1440:int;
      
      private var var_1587:String;
      
      private var var_1590:String;
      
      private var var_1588:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_935 = param1.readInteger();
         this.var_798 = param1.readBoolean();
         this.var_1678 = param1.readBoolean();
         this.var_618 = param1.readString();
         this.var_1440 = param1.readInteger();
         this.var_1587 = param1.readString();
         this.var_1590 = param1.readString();
         this.var_1588 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_935;
      }
      
      public function get online() : Boolean
      {
         return this.var_798;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1678;
      }
      
      public function get figure() : String
      {
         return this.var_618;
      }
      
      public function get categoryId() : int
      {
         return this.var_1440;
      }
      
      public function get motto() : String
      {
         return this.var_1587;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1590;
      }
      
      public function get realName() : String
      {
         return this.var_1588;
      }
   }
}
