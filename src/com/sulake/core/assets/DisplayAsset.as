package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_1048:String;
      
      protected var var_182:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_857:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_857 = param1;
         this.var_1048 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1048;
      }
      
      public function get content() : Object
      {
         return this.var_182;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_857;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_182.loaderInfo != null)
            {
               if(this.var_182.loaderInfo.loader != null)
               {
                  this.var_182.loaderInfo.loader.unload();
               }
            }
            this.var_182 = null;
            this.var_857 = null;
            this._disposed = true;
            this.var_1048 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_182 = param1 as DisplayObject;
            if(this.var_182 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_182 = DisplayAsset(param1).var_182;
            this.var_857 = DisplayAsset(param1).var_857;
            if(this.var_182 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_182 = DisplayAsset(param1).var_182;
            this.var_857 = DisplayAsset(param1).var_857;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
