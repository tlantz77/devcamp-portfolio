3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Beavis rules!",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Ruby on rails",
    body: "Lipsum ipsum Beavis Ruby",
    main_image: "https://via.placeholder.com/300x200",
    thumb_image: "https://via.placeholder.com/150x100"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "React",
    body: "Lipsum ipsum Beavis React",
    main_image: "https://via.placeholder.com/300x200",
    thumb_image: "https://via.placeholder.com/150x100"
  )
end

puts "9 portfolios created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 technologies created"