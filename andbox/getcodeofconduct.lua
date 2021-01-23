{{ $args := parseArgs 1 "" (carg "string" "Look up rule") }}
{{ $rules:= split ($args.Get 0) "," }}

{{ range $index, $rule := $rules }}
    {{$stored_rule := dbGet  0 $rule}}
    {{- if $stored_rule -}}
        {{print $stored_rule.Value}}
    {{- end -}}
{{end}}