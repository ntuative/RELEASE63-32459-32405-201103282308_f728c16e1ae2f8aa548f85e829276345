package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1812:int = 0;
      
      public static const const_1606:int = 1;
      
      public static const const_1739:int = 2;
      
      public static const const_1879:int = 3;
      
      public static const const_1835:int = 4;
      
      public static const const_1914:int = 5;
      
      public static const const_1542:int = 10;
      
      public static const const_1882:int = 11;
      
      public static const const_2008:int = 12;
      
      public static const const_2015:int = 13;
      
      public static const const_1965:int = 16;
      
      public static const const_1875:int = 17;
      
      public static const const_1964:int = 18;
      
      public static const const_1856:int = 19;
      
      public static const const_1953:int = 20;
      
      public static const const_1980:int = 22;
      
      public static const const_1864:int = 23;
      
      public static const const_1915:int = 24;
      
      public static const const_1938:int = 25;
      
      public static const const_1821:int = 26;
      
      public static const const_2000:int = 27;
      
      public static const const_1885:int = 28;
      
      public static const const_1923:int = 29;
      
      public static const const_1838:int = 100;
      
      public static const const_1993:int = 101;
      
      public static const const_1934:int = 102;
      
      public static const const_1836:int = 103;
      
      public static const const_1841:int = 104;
      
      public static const const_1880:int = 105;
      
      public static const const_1955:int = 106;
      
      public static const const_1954:int = 107;
      
      public static const const_1870:int = 108;
      
      public static const const_1834:int = 109;
      
      public static const const_1939:int = 110;
      
      public static const const_2010:int = 111;
      
      public static const const_2028:int = 112;
      
      public static const const_1902:int = 113;
      
      public static const const_1919:int = 114;
      
      public static const const_1901:int = 115;
      
      public static const const_1830:int = 116;
      
      public static const const_2022:int = 117;
      
      public static const const_1952:int = 118;
      
      public static const const_1997:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1606:
            case const_1542:
               return "banned";
            case const_1739:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
