<#macro login path isRegisterForm>
<form action="${path}" method="post">
        <div class="form-group row">
            <label for="username" class="col-sm-2 col-form-label"> User Name : </label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="username" placeholder="User name"/>
            </div>
        </div>
        <div class="form-group row">
            <label for="password" class="col-sm-2 col-form-label"> Password: </label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control" placeholder="Password"/>
            </div>
        </div>
        <#if isRegisterForm>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Email: </label>
            <div class="col-sm-6">
                <input type="email" name="email" class="form-control" placeholder="some@some.com"/>
            </div>
        </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <#if !isRegisterForm><a href="/registration">Don't have account yet? Go for it!</a></#if>
        <button type="submit" class="btn btn-primary mb-2"><#if !isRegisterForm>Sign In  <#else> Sign up</#if></button>
    </form>
</#macro>

<#macro logout>
    <div>
        <form action="logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-primary">Sign Out</button>
        </form>
    </div>
</#macro>