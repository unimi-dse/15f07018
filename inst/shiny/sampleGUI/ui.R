ui <- shinymaterial::material_page(
  title = "Coding for Data Science and Data Management",
  nav_bar_color = "cyan darken-4",
    
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
  ),
  
  div(id = "content",
    
    tags$h4('Insert a repository ID available at', a("https://github.com/unimi-dse", target="_blank", href="https://github.com/unimi-dse")),
    br(),br(),
    
    textInput('repo', label = "Repository ID", placeholder = "15f07018"),
    actionButton('grade', "Check Grade", icon = shiny::icon("github")),
    br(),br(),br(),
    
    uiOutput('result')
    
  )
  
)
