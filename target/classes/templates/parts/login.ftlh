<#macro login path isRegisterForm>

<form action="${path}" method="post">
    <div class="form-group row">
        <label for="username" class="col-sm-2 col-form-label"> User Name : </label>
        <div class="col-sm-6">
            <input type="text"
                   class="form-control ${(usernameError??)?string('is-invalid', '')}"
                   name="username"
                   value="<#if user??>${user.username}</#if>"
                   placeholder="User name"/>
            <#if usernameError??>
                <div class="invalid-feedback">
                ${usernameError}
                </div>
            </#if>
        </div>
    </div>
    <div class="form-group row">
        <label for="password" class="col-sm-2 col-form-label"> Password: </label>
        <div class="col-sm-6">
            <input type="password" name="password"
                   class="form-control ${(passwordError??)?string('is-invalid', '')}"
                   placeholder="Password"/>
            <#if passwordError??>
                <div class="invalid-feedback">
                ${passwordError}
                </div>
            </#if>
        </div>
    </div>

    <#if isRegisterForm>
        <div class="form-group row">
            <label for="password2" class="col-sm-2 col-form-label"> Password: </label>
            <div class="col-sm-6">
                <input type="password" name="password2"
                       class="form-control ${(password2Error??)?string('is-invalid', '')}"
                       placeholder="Password confirmation"/>
                <#if password2Error??>
                    <div class="invalid-feedback">
                    ${password2Error}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Email: </label>
            <div class="col-sm-6">
                <input type="email" name="email"
                       value="<#if user??>${user.email}</#if>"
                       class="form-control ${(emailError??)?string('is-invalid', '')}"
                       placeholder="some@some.com"/>
                <#if emailError??>
                    <div class="invalid-feedback">
                    ${emailError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="col-sm-2 mr-5">
            <div class="g-recaptcha" data-sitekey="6Lf9bc0UAAAAAEOTZXaTONejktJLt1dLof0fk3yt"></div>
            <#if captchaError??>
                <div class="alert alert-danger" role="alert">
                ${captchaError}
                </div>
            </#if>
        </div>
    </#if>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <#if !isRegisterForm><a href="/registration">Don't have account yet? Go for it!</a></#if>
    <div class="mt-3">
        <button type="submit" class="btn btn-primary mb-2"><#if !isRegisterForm>Sign In  <#else> Sign up</#if></button>
    </div>
</form>
</#macro>

<#macro logout>
    <div>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit" class="btn btn-primary">Logout</button>
        </form>
    </div>
</#macro>