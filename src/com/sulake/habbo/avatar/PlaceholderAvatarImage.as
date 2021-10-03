package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_702:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_711)
         {
            _structure = null;
            _assets = null;
            var_264 = null;
            var_282 = null;
            var_618 = null;
            var_557 = null;
            var_330 = null;
            if(!var_1298 && var_45)
            {
               var_45.dispose();
            }
            var_45 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_703 = null;
            var_711 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_702[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_702[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_369:
               switch(_loc3_)
               {
                  case AvatarAction.const_852:
                  case AvatarAction.const_544:
                  case AvatarAction.const_400:
                  case AvatarAction.const_886:
                  case AvatarAction.const_404:
                  case AvatarAction.const_827:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_291:
            case AvatarAction.const_884:
            case AvatarAction.const_261:
            case AvatarAction.const_866:
            case AvatarAction.const_753:
            case AvatarAction.const_684:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
