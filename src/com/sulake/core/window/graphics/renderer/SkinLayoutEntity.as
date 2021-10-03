package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_505:uint = 0;
      
      public static const const_328:uint = 1;
      
      public static const const_470:uint = 2;
      
      public static const const_323:uint = 4;
      
      public static const const_1178:uint = 8;
       
      
      private var _id:uint;
      
      private var _name:String;
      
      private var var_851:Array;
      
      private var _color:uint;
      
      private var var_822:uint;
      
      private var var_2725:uint;
      
      private var var_2726:uint;
      
      private var _region:Rectangle;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         this._id = param1;
         this._name = param2;
         this._region = param3;
         this._color = param4;
         this.var_822 = param5;
         this.var_2725 = param6;
         this.var_2726 = param7;
         this.var_851 = new Array();
      }
      
      public function get id() : uint
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get tags() : Array
      {
         return this.var_851;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get blend() : uint
      {
         return this.var_822;
      }
      
      public function get region() : Rectangle
      {
         return this._region;
      }
      
      public function get scaleH() : uint
      {
         return this.var_2725;
      }
      
      public function get scaleV() : uint
      {
         return this.var_2726;
      }
      
      public function dispose() : void
      {
         this._region = null;
         this.var_851 = null;
      }
   }
}
