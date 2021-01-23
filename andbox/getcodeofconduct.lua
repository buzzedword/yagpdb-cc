{{ $args := parseArgs 1 "" (carg "string" "Look up rule") }}
{{ $rule:= $args.Get 0 }}
{{$stored_rule := dbGet  0 $rule}}

{{if $stored_rule}}
    {{$stored_rule.Value}}
{{end}}