<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <div>
        <div>${message?ifExists}</div>
        <@l.login "/login" false/>
    </div>
</@c.page>