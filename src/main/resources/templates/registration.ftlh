<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>

<div class="mb-1"><h3>Register</h3></div>
<div>${message?ifExists}</div>
    <@l.login "/registration" true/>
</@c.page>
