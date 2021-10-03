package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_941:int = 3;
       
      
      private var var_2162:int = -1;
      
      private var var_2163:int = -2;
      
      private var var_339:Vector3d = null;
      
      private var var_404:Vector3d = null;
      
      private var var_1608:Vector3d;
      
      private var var_2160:Boolean = false;
      
      private var _limitedLocY:Boolean = false;
      
      private var var_2167:Boolean = false;
      
      private var var_2165:Boolean = false;
      
      private var var_2159:int = 0;
      
      private var var_2161:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2166:int = 0;
      
      private var var_2164:int = 0;
      
      private var var_1801:int = -1;
      
      private var var_1333:int = 0;
      
      public function RoomCamera()
      {
         this.var_1608 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_404;
      }
      
      public function get targetId() : int
      {
         return this.var_2162;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2163;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1608;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2160;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this._limitedLocY;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2167;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2165;
      }
      
      public function get screenWd() : int
      {
         return this.var_2159;
      }
      
      public function get screenHt() : int
      {
         return this.var_2161;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2166;
      }
      
      public function get roomHt() : int
      {
         return this.var_2164;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1801;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2162 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1608.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2163 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2160 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this._limitedLocY = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2167 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2165 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2159 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2161 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         this._scale = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2166 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2164 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1801 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_339 == null)
         {
            this.var_339 = new Vector3d();
         }
         if(this.var_339.x != param1.x || this.var_339.y != param1.y || this.var_339.z != param1.z)
         {
            this.var_339.assign(param1);
            this.var_1333 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_339 = null;
         this.var_404 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_404 != null)
         {
            return;
         }
         this.var_404 = new Vector3d();
         this.var_404.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_339 != null && this.var_404 != null)
         {
            ++this.var_1333;
            _loc4_ = Vector3d.dif(this.var_339,this.var_404);
            if(_loc4_.length <= param2)
            {
               this.var_404 = this.var_339;
               this.var_339 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_941 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1333 <= const_941)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_404 = Vector3d.sum(this.var_404,_loc4_);
            }
         }
      }
   }
}
