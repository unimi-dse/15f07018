server <- function(input, output, session) {
  
  # on button click...
  observeEvent(input$grade,{
    
    # grade the project!
    output$result <- renderText({
      
      # show loader
      shinymaterial::material_spinner_show(session, "grade")
      
      # grade the project
      res <- grade(ids = input$repo, verbose = FALSE)
      
      # hide loader
      shinymaterial::material_spinner_hide(session, "grade")
      
      if(res$grade=='FAIL')
        html = '<div class="fail">Invalid package</div>'
      else
        html = sprintf('<div class="pass">Congrats! Package <em>%s</em> correctly installed.</div>', res$pkg)
      
      return(html)
      
    })
    
  })
    
  
  
}