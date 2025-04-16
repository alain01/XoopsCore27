<div class="row">

	<div class="col-md-3">
		<div class="card card-primary card-outline text-primary">
			<div class="card-header">
				<h3 class="card-title"><i class="fas fa-user fa-lg"></i> <{$smarty.const._AM_SYSTEM_USER}> & <{$smarty.const._AM_SYSTEM_ADGS}></h3>
				<div class="card-tools">
					<button type="button" class="btn btn-tool" data-card-widget="collapse">
						<i class="fas fa-minus"></i>
					</button>
				</div>
			</div>
			<div class="card-body text-primary">
				<a class="btn btn-app text-primary" href="<{xoAppUrl url='modules/system/admin.php?fct=users'}>"><i class="fas fa-user"></i> <{$smarty.const._AM_SYSTEM_USER}></a>
				<a class="btn btn-app text-primary" href="<{xoAppUrl url='modules/system/admin.php?fct=groups'}>"><i class="fas fa-users"></i> <{$smarty.const._AM_SYSTEM_ADGS}></a>
				<a class="btn btn-app text-primary" href="<{xoAppUrl url='modules/system/admin.php?fct=userrank'}>"><i class="fas fa-star"></i> <{$smarty.const._AM_SYSTEM_RANK}></a>
			</div>
			<div class="card-footer">
				Texte aide sur le groupe user / groups
			</div>
		</div>
	</div>

	<div class="col-md-3">
		<div class="card card-olive card-outline text-olive">
			<div class="card-header">
				<h3 class="card-title"><i class="fas fa-user fa-lg"></i> <{$smarty.const._AM_SYSTEM_USER}> & <{$smarty.const._AM_SYSTEM_ADGS}></h3>
				<div class="card-tools">
					<button type="button" class="btn btn-tool" data-card-widget="collapse">
						<i class="fas fa-minus"></i>
					</button>
				</div>
			</div>
			<div class="card-body">
				<a class="btn btn-app text-olive" href="<{xoAppUrl url='modules/system/admin.php?fct=users'}>"><i class="fas fa-user"></i> <{$smarty.const._AM_SYSTEM_USER}></a>
				<a class="btn btn-app text-olive" href="<{xoAppUrl url='modules/system/admin.php?fct=groups'}>"><i class="fas fa-users"></i> <{$smarty.const._AM_SYSTEM_ADGS}></a>
				<a class="btn btn-app text-olive" href="<{xoAppUrl url='modules/system/admin.php?fct=userrank'}>"><i class="fas fa-star"></i> <{$smarty.const._AM_SYSTEM_RANK}></a>
			</div>
			<div class="card-footer">
				Texte aide sur le groupe user / groups
			</div>
		</div>
	</div>



</div>

<div class="row">
	<div class="col">
		<div class="card card-purple card-outline text-purple">
			<div class="card-header">
				<h3 class="card-title"><i class="fas fa-puzzle-piece"></i> <{$smarty.const._AM_SYSTEM_MODULES}></h3>
				<div class="card-tools">
					<button type="button" class="btn btn-tool" data-card-widget="collapse">
						<i class="fas fa-minus"></i>
					</button>
				</div>
			</div>
			<div class="card-body">
				<a class="btn btn-app text-purple" href="<{xoAppUrl url='modules/system/admin.php?fct=modulesadmin'}>"><i class="fas fa-puzzle-piece"></i> <{$smarty.const._AM_SYSTEM_MODULES}></a>
				<a class="btn btn-app text-purple" href="<{xoAppUrl url='modules/system/admin.php?fct=modulesadmin&op=installlist'}>"><i class="fas fa-download"></i> <{$smarty.const._AM_SYSTEM_MODULES_TOINSTALL}></a>
				<hr />
				<{foreach item=module from=$modules|default:null}>
					<{foreach item=sub from=$module.menu|default:null}>
						<{if isset($sub.dir) && $sub.dir != 'system'}>
							<a class="btn btn-app text-purple" href="<{xoAppUrl url='modules/system/admin.php?fct=modulesadmin'}>"><i class="fas fa-puzzle-piece"></i> <{$sub.title}></a>
							<ul class="nav nav-treeview <{if $xoops_dirname == $sub.dir}> menu-open<{/if}>" style="display: <{if $xoops_dirname == $sub.dir}> block<{else}>none<{/if}>;">
								<{foreach item=optn from=$sub.options|default:null}>
									<li class="nav-item"><a href="<{$sub.url}><{$optn.link}>" class="nav-link"><i class="far fa-circle nav-icon"></i><{$optn.title}></a></li>
								<{/foreach}>
							</ul>
						<{/if}>
                    <{/foreach}>
				<{/foreach}>
			</div>
			<div class="card-footer">
				Texte aide sur les modules
			</div>
		</div>
	</div>
</div>
<!-- /.row -->

<!-- =========================================================== -->

