3.times do |topic|
	Topic.create!(
		title: "topic #{topic}"
		)
end

puts "3 topic created successfully"

10.times do |blog|
	Blog.create(
		title: "My blog post #{blog}",
		body: 	"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
		)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create(
		title: "My skill number #{skill}",
		percent_utilized: 23
		)
end


puts "5 skills mentionned"

8.times do |portfolio|
	Portfolio.create(
		title: "Portfolio title: #{portfolio}",
		subtitle: "Ruby On Rails",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
		
		)
end

1.times do |portfolio|
	Portfolio.create(
		title: "Portfolio title: #{portfolio}",
		subtitle: "Angular",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
		)
end

puts "9 portfolios created"

3.times do |technology|
	 Portfolio.last.technologies.create!(
	 	name: "Technology #{technology}"
	 	)
end

puts "3 Technologies created"
