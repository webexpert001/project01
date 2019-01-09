<!--{*
 * EC-CUBE on Bootstrap3. This file is part of EC-CUBE
 *
 * Copyright(c) 2014 clicktx. All Rights Reserved.
 *
 * http://perl.no-tubo.net/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *}-->

<div id="undercolumn">
    <div id="undercolumn_entry">
        <h2 class="title"><!--{$tpl_title|h}--></h2>
        <!--{if $smarty.const.CUSTOMER_CONFIRM_MAIL}-->
            <p class="alert alert-warning">ご登録されますと、まずは仮会員となります。<br />
                入力されたメールアドレスに、ご連絡が届きますので、本会員になった上でお買い物をお楽しみください。</p>
        <!--{/if}-->

        <div class="alert alert-info fade in">
          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          <strong>必須項目</strong> 「<span class="attention">※</span>」印は入力必須項目です。
        </div>
        <form name="form1" id="form1" class="form-horizontal" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="confirm" />

            <!--{include file="`$smarty.const.TEMPLATE_REALDIR`frontparts/form_personal_input.tpl" flgFields=3 emailMobile=false prefix=""}-->

            <div class="btn_area form-group">
                <div class="col-sm-12 col-md-4 col-md-push-2">
                    <button id="next" class="btn btn-primary btn-block xs-btn-lg sm-btn-lg">確認ページヘ</button>
                </div>
            </div>

        </form>
    </div>
</div>
