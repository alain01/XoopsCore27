<!-- Breadcrumb Header -->
<{include file="db:system_header.tpl"}>
<script type="text/javascript">
    IMG_ON = '<{xoAdminIcons url='success.png'}>';
    IMG_OFF = '<{xoAdminIcons url='cancel.png'}>';
</script>
<{if !empty($filterform)}>
<div class="row">
    <div class="col">
      <div class="card">
        <div class="card-header">
          <form name="<{$filterform.name}>" id="<{$filterform.name}>" action="<{$filterform.action}>" method="<{$filterform.method}>"
            <{$filterform.extra}> >
            <div class="xo-blocksfilter">
              <{foreach item=element from=$filterform.elements|default:null}>
              <{if isset($element.hidden) && $element.hidden != true}>
              <div class="xo-caption"><{$element.caption}></div>
              <div class="xo-element"><{$element.body}></div>
              <{else}>
              <{$element.body}>
              <{/if}>
              <{/foreach}>
            </div>
          </form>
          <div class="card-tools">
            <a class="btn btn-sm btn-secondary" href="admin.php?fct=blocksadmin&amp;op=add" data-toggle="tooltip"
                title="<{$smarty.const._AM_SYSTEM_BLOCKS_ADD}>">
                <i class="fa fa-plus-circle ic-w mr-1"></i><{$smarty.const._AM_SYSTEM_BLOCKS_ADD}>
            </a>
          </div>
        </div>
        <div class="card-body">
          <div id="xo-block-dragndrop">
            <table class="outer">
            <tr>
                <td>
                    <table id="xo-block-managment">
                        <tr>
                            <td side="0" class="xo-blocksection" rowspan="3" id="xo-leftcolumn">
                                <div class="xo-title"><{$smarty.const._AM_SYSTEM_BLOCKS_SIDELEFT}></div>
                                <{include file="db:system_blocks_item.tpl" blocks=$blocks side=0}>
                            </td>
                            <td side="3" class="xo-blocksection">
                                <div class="xo-title"><{$smarty.const._AM_SYSTEM_BLOCKS_SIDETOPLEFT}></div>
                                <{include file="db:system_blocks_item.tpl" blocks=$blocks side=3}>
                            </td>
                            <td side="5" class="xo-blocksection">
                                <div class="xo-title"><{$smarty.const._AM_SYSTEM_BLOCKS_SIDETOPCENTER}></div>
                                <{include file="db:system_blocks_item.tpl" blocks=$blocks side=5}>
                            </td>
                            <td side="4" class="xo-blocksection">
                                <div class="xo-title"><{$smarty.const._AM_SYSTEM_BLOCKS_SIDETOPRIGHT}></div>
                                <{include file="db:system_blocks_item.tpl" blocks=$blocks side=4}>
                            </td>
                            <td side="1" class="xo-blocksection" rowspan="3" id="xo-rightcolumn">
                                <div class="xo-title"><{$smarty.const._AM_SYSTEM_BLOCKS_SIDERIGHT}></div>
                                <{include file="db:system_blocks_item.tpl" blocks=$blocks side=1}>
                            </td>
                        </tr>
                        <tr style="height:30px;">
                            <td colspan="3" class="xo-blockContent width5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td side="7" class="xo-blocksection">
                                <div class="xo-title"><{$smarty.const._AM_SYSTEM_BLOCKS_SIDEBOTTOMLEFT}></div>
                                <{include file="db:system_blocks_item.tpl" blocks=$blocks side=7}>
                            </td>
                            <td side="9" class="xo-blocksection">
                                <div class="xo-title"><{$smarty.const._AM_SYSTEM_BLOCKS_SIDEBOTTOMCENTER}></div>
                                <{include file="db:system_blocks_item.tpl" blocks=$blocks side=9}>
                            </td>
                            <td side="8" class="xo-blocksection">
                                <div class="xo-title"><{$smarty.const._AM_SYSTEM_BLOCKS_SIDEBOTTOMRIGHT}></div>
                                <{include file="db:system_blocks_item.tpl" blocks=$blocks side=8}>
                            </td>
                        </tr>
                        <tr>
                            <!-- Start Footer Blocks (By Timgno) -->
                            <table id="xo-block-footer">
                                <tr>
                                    <td side="10" class="xo-blocksection">
                                        <div class="xo-title"><{$smarty.const._AM_SYSTEM_BLOCKS_SIDEFOOTERLEFT}></div>
                                        <{include file="db:system_blocks_item.tpl" blocks=$blocks side=10}>
                                    </td>
                                    <td side="12" class="xo-blocksection">
                                        <div class="xo-title"><{$smarty.const._AM_SYSTEM_BLOCKS_SIDEFOOTERCENTER}></div>
                                        <{include file="db:system_blocks_item.tpl" blocks=$blocks side=12}>
                                    </td>
                                    <td side="11" class="xo-blocksection">
                                        <div class="xo-title"><{$smarty.const._AM_SYSTEM_BLOCKS_SIDEFOOTERRIGHT}></div>
                                        <{include file="db:system_blocks_item.tpl" blocks=$blocks side=11}>
                                    </td>
                                </tr>
                            </table>
                            <!-- End Footer Blocks (By Timgno) -->
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
        </div>
      </div>
    </div>
</div>

<{/if}>
<div id="xo-block-add" <{if !empty($filterform)}>class="hide"<{/if}>>
    <{if empty($filterform)}><br><{/if}>
    <{$blockform}>
</div>
<!-- Preview block -->
<div id="xo-preview-block" class="hide"></div>
