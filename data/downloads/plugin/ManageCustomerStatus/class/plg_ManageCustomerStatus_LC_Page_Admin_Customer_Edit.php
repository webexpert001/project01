<?php
/*
 * ManageCustomerStatus
 * Copyright (C) 2012 Bratech CO.,LTD. All Rights Reserved.
 * http://wwww.bratech.co.jp/
 * 
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 * 
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

require_once PLUGIN_UPLOAD_REALDIR . "ManageCustomerStatus/plg_ManageCustomerStatus_Utils.php";
require_once PLUGIN_UPLOAD_REALDIR . "ManageCustomerStatus/class/plg_ManageCustomerStatus_LC_Page.php";

class plg_ManageCustomerStatus_LC_Page_Admin_Customer_Edit extends plg_ManageCustomerStatus_LC_Page{
    /**
     * @param LC_Page_Admin_Customer_Edit $objPage 会員編集のページクラス
     * @return void
     */
    function after($objPage) {
		$objPage->arrPlgManageCustomerStatus = plg_ManageCustomerStatus_Utils::getStatusRankList();
		$objPage->arrPlgManageCustomerStatus[0] = "ランクなし";
		
		if($objPage->getMode() == 'edit_search'){
			$objFormSearchParam = new SC_FormParam_Ex();
			$objPage->lfInitSearchParam($objFormSearchParam);
			plg_ManageCustomerStatus_Utils::addSearchManageCustomerStatusParam($objFormSearchParam);
			$objFormSearchParam->setParam($_REQUEST);
			$objPage->arrSearchData = $objFormSearchParam->getSearchArray();
		}	
    }
}