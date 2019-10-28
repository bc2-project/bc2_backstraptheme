{foreach $areas a}
    {if $a.scope_id==2 && $a.name!="administration" && $a.name!="content"}
        {if $a.level==1}<?php $seen = 0; ?>
<div class="row area">
    <div class="col-md-1 col-sm-0 p-1 pl-3 pt-3" title="{translate($a.name|ucfirst)}">
        <img src="{$CAT_URL}/templates/backstrap/images/{$a.name}.png" alt="{translate('Area image')}">
    </div>
    <div class="col-md-9 col-sm-12 p-1">
        <div class="row">
        {foreach $areas b}
            {if $a.id==$b.parent}<?php $seen++; ?>
            <div class="col-1 m-1 p-0">
                <a class="card border-0" href="{$CAT_ADMIN_URL}/{$a.name}/{$b.name}">
                  <img src="{$CAT_URL}/templates/backstrap/images/{$b.name}.png" class="card-img-top" alt="...">
                  <div class="card-body m-0 p-0 pt-1 pb-1 text-center" style="font-size:.8rem">
                    {translate($b.name|ucfirst)}
                  </div>
                </a>
            </div>
            {/if}
        {/foreach}
<?php if($seen==0): ?>
            <div class="col-1 m-1 p-0">
                <a class="card border-0" href="{$CAT_ADMIN_URL}/{$a.name}">
                    <img src="{$CAT_URL}/templates/backstrap/images/tools.png" class="card-img-top" alt="...">
                    <div class="card-body m-0 p-0 pt-1 pb-1 text-center" style="font-size:.8rem">
                        {translate('Index')}
                    </div>
                </a>
            </div>
<?php endif; ?>
        </div>
    </div>
</div>
        {/if}
    {/if}
{/foreach}

<!--
Bild von <a href="https://pixabay.com/de/users/PublicDomainPictures-14/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=314634">PublicDomainPictures</a> auf <a href="https://pixabay.com/de/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=314634">Pixabay</a>
areas (array):
0 (array):
id = '1'
scope_id = '1'
name = 'dashboard'
position = '1'
parent = '0'
level = '1'
controller = null
switch = 'N'
1 (array):
id = '6'
scope_id = '2'
name = 'admintools'
position = '1'
parent = '0'
level = '1'
controller = ''
switch = 'N'
2 (array):
id = '26'
scope_id = '3'
name = 'sites'
position = '1'
parent = '0'
level = '1'
controller = null
switch = 'N'
3 (array):
id = '25'
scope_id = '1'
name = 'pages'
position = '1'
parent = '0'
level = '1'
controller = null
switch = 'N'
4 (array):
id = '5'
scope_id = '2'
name = 'addons'
position = '2'
parent = '0'
level = '1'
controller = ''
switch = 'N'
5 (array):
id = '3'
scope_id = '1'
name = 'media'
position = '3'
parent = '0'
level = '1'
controller = ''
switch = 'N'
� (a??  ):
id = '4'
scope_id = '2'
name = 'settings'
position = '3'
parent = '0'
level = '1'
controller = ''
switch = 'N'
7 (array):
id = '30'
scope_id = '2'
name = 'roles_and_permissions'
position = '4'
parent = '0'
level = '1'
controller = null
switch = 'N'
8 (array):
id = '24'
scope_id = '2'
name = 'administration'
position = '5'
parent = '0'
level = '1'
controller = ''
switch = 'N'
9 (array):
id = '31'
scope_id = '2'
name = 'content'
position = '9'
parent = '0'
level = '1'
controller = null
switch = 'N'
10 (array):
id = '28'
scope_id = '2'
name = 'socialmedia'
position = '1'
parent = '4'
level = '2'
controller = null
switch = 'N'
11 (array):
id = '29'
scope_id = '2'
name = 'menus'
position = '2'
parent = '4'
level = '2'
controller = null
switch = 'N'
12 (array):
id = '9'
scope_id = '2'
name = 'roles'
position = '1'
parent = '30'
level = '2'
controller = ''
switch = 'N'
13 (array):
id = '10'
scope_id = '2'
name = 'permissions'
position = '2'
parent = '30'
level = '2'
controller = ''
switch = 'N'
14 (array):
id = '8'
scope_id = '2'
name = 'groups'
position = '3'
parent = '30'
level = '2'
controller = ''
switch = 'N'
15 (array):
id = '7'
scope_id = '2'
name = 'users'
position = '4'
parent = '30'
level = '2'
controller = ''
switch = 'N'
-->