<?php

/* default/template/common/language.twig */
class __TwigTemplate_ea559cb9f710677aa1ec0589cf8ae0ecbf124ff2597e0d6a874a4fc8abded17a extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        if ((twig_length_filter($this->env, (isset($context["languages"]) ? $context["languages"] : null)) > 1)) {
            // line 2
            echo "<div class=\"pull-left\">
  <form action=\"";
            // line 3
            echo (isset($context["action"]) ? $context["action"] : null);
            echo "\" method=\"post\" enctype=\"multipart/form-data\" id=\"form-language\">
    <div class=\"btn-group\">
      <button class=\"btn btn-link dropdown-toggle\" data-toggle=\"dropdown\">";
            // line 6
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["languages"]) ? $context["languages"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 7
                if (($this->getAttribute($context["language"], "code", array()) == (isset($context["code"]) ? $context["code"] : null))) {
                    echo " 
      <img src=\"catalog/language/";
                    // line 8
                    echo $this->getAttribute($context["language"], "code", array());
                    echo "/";
                    echo $this->getAttribute($context["language"], "code", array());
                    echo ".png\" alt=\"";
                    echo $this->getAttribute($context["language"], "name", array());
                    echo "\" title=\"";
                    echo $this->getAttribute($context["language"], "name", array());
                    echo "\">";
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 11
            echo "      <span class=\"hidden-xs hidden-sm hidden-md\">";
            echo (isset($context["text_language"]) ? $context["text_language"] : null);
            echo "</span>&nbsp;<i class=\"fa fa-caret-down\"></i></button>
      <ul class=\"dropdown-menu\">";
            // line 13
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["languages"]) ? $context["languages"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["language"]) {
                // line 14
                echo "        <li>
          <button class=\"btn btn-link btn-block language-select\" type=\"button\" name=\"";
                // line 15
                echo $this->getAttribute($context["language"], "code", array());
                echo "\"><img src=\"catalog/language/";
                echo $this->getAttribute($context["language"], "code", array());
                echo "/";
                echo $this->getAttribute($context["language"], "code", array());
                echo ".png\" alt=\"";
                echo $this->getAttribute($context["language"], "name", array());
                echo "\" title=\"";
                echo $this->getAttribute($context["language"], "name", array());
                echo "\" />";
                echo $this->getAttribute($context["language"], "name", array());
                echo "</button>
        </li>";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['language'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 18
            echo "      </ul>
    </div>
    <input type=\"hidden\" name=\"code\" value=\"\" />
    <input type=\"hidden\" name=\"redirect\" value=\"";
            // line 21
            echo (isset($context["redirect"]) ? $context["redirect"] : null);
            echo "\" />
  </form>
</div>";
        }
    }

    public function getTemplateName()
    {
        return "default/template/common/language.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  86 => 21,  81 => 18,  63 => 15,  60 => 14,  56 => 13,  51 => 11,  37 => 8,  33 => 7,  29 => 6,  24 => 3,  21 => 2,  19 => 1,);
    }
}
/* {% if languages|length > 1 %}*/
/* <div class="pull-left">*/
/*   <form action="{{ action }}" method="post" enctype="multipart/form-data" id="form-language">*/
/*     <div class="btn-group">*/
/*       <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">*/
/*       {% for language in languages %}*/
/*       {% if language.code == code %} */
/*       <img src="catalog/language/{{ language.code }}/{{ language.code }}.png" alt="{{ language.name }}" title="{{ language.name }}">*/
/*       {% endif %}*/
/*       {% endfor %}*/
/*       <span class="hidden-xs hidden-sm hidden-md">{{ text_language }}</span>&nbsp;<i class="fa fa-caret-down"></i></button>*/
/*       <ul class="dropdown-menu">*/
/*         {% for language in languages %}*/
/*         <li>*/
/*           <button class="btn btn-link btn-block language-select" type="button" name="{{ language.code }}"><img src="catalog/language/{{ language.code }}/{{ language.code }}.png" alt="{{ language.name }}" title="{{ language.name }}" /> {{ language.name }}</button>*/
/*         </li>*/
/*         {% endfor %}*/
/*       </ul>*/
/*     </div>*/
/*     <input type="hidden" name="code" value="" />*/
/*     <input type="hidden" name="redirect" value="{{ redirect }}" />*/
/*   </form>*/
/* </div>*/
/* {% endif %}*/
/* */
