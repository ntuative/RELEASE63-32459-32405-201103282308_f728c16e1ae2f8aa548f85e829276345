package com.sulake.core.assets
{
   import flash.utils.getQualifiedClassName;
   
   public class UnknownAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_182:Object = null;
      
      private var var_1697:AssetTypeDeclaration;
      
      private var var_1048:String;
      
      public function UnknownAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_1697 = param1;
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
         return this.var_1697;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_182 = null;
            this.var_1697 = null;
            this.var_1048 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         this.var_182 = param1;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         this.var_182 = param1.content as Object;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + this.var_182;
      }
   }
}
