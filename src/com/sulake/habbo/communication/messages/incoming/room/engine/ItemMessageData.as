package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2761:Boolean = false;
      
      private var var_2759:int = 0;
      
      private var var_2760:int = 0;
      
      private var var_2479:int = 0;
      
      private var var_2478:int = 0;
      
      private var var_171:Number = 0;
      
      private var var_170:Number = 0;
      
      private var var_373:String = "";
      
      private var _type:int = 0;
      
      private var var_2931:String = "";
      
      private var var_1532:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_189:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2761 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_189 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2761;
      }
      
      public function get wallX() : Number
      {
         return this.var_2759;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_189)
         {
            this.var_2759 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2760;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_189)
         {
            this.var_2760 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2479;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_189)
         {
            this.var_2479 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2478;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_189)
         {
            this.var_2478 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_171;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_189)
         {
            this.var_171 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_170;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_189)
         {
            this.var_170 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_373;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_189)
         {
            this.var_373 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_189)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_189)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_189)
         {
            this._data = param1;
         }
      }
   }
}
