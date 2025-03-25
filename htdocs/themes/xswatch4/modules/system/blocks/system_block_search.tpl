<div class="text-center">

    <form role="search" action="<{xoAppUrl url='search.php'}>" method="get">

        <div class="input-group">

            <input class="form-control" type="text" name="query" placeholder="<{$smarty.const.THEME_SEARCH_TEXT}>">

            <input type="hidden" name="action" value="results">

            <span class="input-group-btn">

                <button class="btn btn-primary" type="submit">

                    <span class="fa fa-search"></span>

                </button>

            </span>

        </div>

    </form>

    <p class="text-right">
        <a href="<{xoAppUrl url='search.php'}>" title="<{$block.lang_advsearch}>">
            <{$block.lang_advsearch}>
        </a>
    </p>
</div>
