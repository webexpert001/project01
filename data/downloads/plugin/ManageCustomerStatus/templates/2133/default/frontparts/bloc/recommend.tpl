<!--{*
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
 *}-->


<br>
<!-- ▼会員価格 -->
<!--{if strlen($arrProduct.plg_managecustomerstatus_price_min) > 0 && (($smarty.session.customer.customer_id && $smarty.const.PLG_MANAGECUSTOMER_LOGIN_DISP == 1) || $smarty.const.PLG_MANAGECUSTOMER_LOGIN_DISP == 0)}-->
        <font color="#0000FF"><!--{if $smarty.const.MEMBER_RANK_PRICE_TITLE_MODE == 1}--><!--{$arrCustomerRank[$customer_rank_id]}--><!--{/if}--><!--{$smarty.const.MEMBER_RANK_PRICE_TITLE}-->(税込)： <span class="price"><!--{$arrProduct.plg_managecustomerstatus_price_min_inctax|n2s}--> 円</span></font>

<!--{/if}-->
<!-- ▲会員価格 -->