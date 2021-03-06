package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.utils.IIterable;
   
   public interface IItemListWindow extends IWindow, IScrollableWindow, IIterable
   {
       
      
      function swapListItemsAt(param1:int, param2:int) : void;
      
      function get autoArrangeItems() : Boolean;
      
      function groupListItemsWithID(param1:uint, param2:Array, param3:Boolean = false) : uint;
      
      function set autoArrangeItems(param1:Boolean) : void;
      
      function removeListItemAt(param1:int) : IWindow;
      
      function get spacing() : int;
      
      function getListItemIndex(param1:IWindow) : int;
      
      function set spacing(param1:int) : void;
      
      function get resizeOnItemUpdate() : Boolean;
      
      function addListItem(param1:IWindow) : IWindow;
      
      function getListItemByID(param1:uint) : IWindow;
      
      function getListItemAt(param1:uint) : IWindow;
      
      function get numListItems() : int;
      
      function removeListItems() : void;
      
      function addListItemAt(param1:IWindow, param2:uint) : IWindow;
      
      function destroyListItems() : void;
      
      function getListItemByName(param1:String) : IWindow;
      
      function set resizeOnItemUpdate(param1:Boolean) : void;
      
      function set scaleToFitItems(param1:Boolean) : void;
      
      function groupListItemsWithTag(param1:String, param2:Array, param3:Boolean = false) : uint;
      
      function get scaleToFitItems() : Boolean;
      
      function removeListItem(param1:IWindow) : IWindow;
      
      function swapListItems(param1:IWindow, param2:IWindow) : void;
      
      function arrangeListItems() : void;
      
      function setListItemIndex(param1:IWindow, param2:int) : void;
   }
}
