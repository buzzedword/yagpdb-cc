{{ $args := parseArgs 1 "" (carg "int" "page to use") }}
{{ $page := $args.Get 0 }}

{{ if eq $page 1 }}
	{{ dbSet 0 "3.1" "Section 3, Point 1 \r> Violence, threats of violence or language supporting violence directed against another person." }}
	{{ dbSet 0 "3.2" "Section 3, Point 2 \r> Offensive comments or direct personal insults including, but not limited to, to gender, gender identity and expression, sexual orientation, disability, mental illness, neuro(a)typicality, physical appearance, body size, race, age, regional discrimination, political or religious affiliation." }}
	{{ dbSet 0 "3.3" "Section 3, Point 3 \r> Unwelcome comments regarding a person’s lifestyle choices and practices, including those related to food, health, parenting, education, drugs, and employment." }}
	{{ dbSet 0 "3.4" "Section 3, Point 4 \r> Advocating any form of cheating. " }}
	{{ dbSet 0 "3.5" "Section 3, Point 5 \r> Posting or displaying sexually explicit or violent material." }}
	{{ dbSet 0 "3.6" "Section 3, Point 6 \r> Posting or threatening to post other people’s personally identifying information (“doxing”)." }}
	{{ dbSet 0 "3.7" "Section 3, Point 7 \r> Sharing of intellectual property (music, movies, etc.) for download. " }}
	{{ dbSet 0 "3.8" "Section 3, Point 8 \r> Unwelcomed physical contact or any physical contact deemed inappropriate. " }}
	{{ dbSet 0 "3.9" "Section 3, Point 9 \r> Unwelcomed sexual engagement. This includes but is not limited to: sexualized comments or jokes; inappropriate touching, groping, and/or unwelcome sexual advances." }}
	{{ dbSet 0 "3.10" "Section 3, Point 10 \r> Deliberate intimidation, stalking or following (online or in person)." }}
{{else if eq $page 2 }}
	{{ dbSet 0 "3.11" "Section 3, Point 11 \r> Advocating for, or encouraging, any of the above behavior." }}
	{{ dbSet 0 "3.12" "Section 3, Point 12 \r> Sustained disruption of community discourse or events. " }}
	{{ dbSet 0 "3.13" "Section 3, Point 13 \r> Using Andbox social media channels and forums to publicly accuse an individual or individuals in the community of violations. Violations should be reported to the appropriate individuals or organizations (covered below in Section 5)." }}
{{ end }}
