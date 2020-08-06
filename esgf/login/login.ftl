<#import "template.ftl" as layout>
<@layout.registrationLayout; section>

<#if section = "header">Login</#if>

<#if section = "form">
<div class="dropdown">
    <button class="btn btn-block btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Select your institution
    </button>
    <div class="dropdown-menu text-center w-100" aria-labelledby="dropdownMenuButton">
        <#if myOptionalVar??>
        <#list social.providers as p>
        <a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial dropdown-item"> <span>${p.displayName}</span></a>
        </#list>
        <#else>
        <span>No identity providers available</span>
        </#if>
    </div>
</div>
<div class="mt-1">
    <div class="text-center">
        <a href="">I don't have an account</a>
    </div>
</div>
<div class="py-2">
    <div class="login-or">
        <hr class="hr-or">
        <span class="span-or">or</span>
    </div>
</div>
<div class="col-md-12 mb-3">
    <div class="text-center">
        Sign in with one of these identity providers
    </div>
</div>
<#if social.providers??>
<div class="d-flex justify-content-end social_icon d-flex justify-content-center mb-3">
    <#list social.providers as p>
    <#if p.alias == "orcid">
    <a href="${p.loginUrl}" title="Sign in with ORCID"><span><i class="fab fa-orcid"></i></span></a>
    <#elseif p.alias == "github">
    <a href="${p.loginUrl}" title="Sign in with GitHub"><span><i class="fab fa-github-square"></i></span></a>
    <#elseif p.alias == "google">
    <a href="${p.loginUrl}" title="Sign in with Google Plus"><span><i class="fab fa-google-plus-square"></i></span></a>
    <#elseif p.alias == "microsoft">
    <a href="${p.loginUrl}" title="Sign in with Microsoft"><span><i class="fab fa-windows"></i></span></a>
    </#if>
    </#list>
</div>
</#if>
</#if>

</@layout.registrationLayout>
