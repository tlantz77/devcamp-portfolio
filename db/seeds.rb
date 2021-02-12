10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Beavis rules!"
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

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Sweet-ass service",
    body: "Lipsum ipsum Beavis",
    main_image: "https://via.placeholder.com/300",
    thumb_image: "https://via.placeholder.com/150"
  )
end

puts "9 portfolios created"