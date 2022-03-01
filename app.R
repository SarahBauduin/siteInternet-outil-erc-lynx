library(shiny)
library(shinythemes)

ui <- fluidPage( 
    
    theme = shinytheme("flatly"),
    
    navbarPage(
        title = "",
        tabPanel(h4(tags$b("Outil ERC-Lynx")),
    # ---- Accès outil ----
    HTML('<center><img src="entete.PNG" width="60%" height="60%"></center>'),
    h3("Éviter, réduire et compenser le risque de mortalité du lynx par collision avec les véhicules de transport"),
    includeMarkdown("www/projetDescription.md"),
    
    wellPanel(

    h3("Accéder directement à l'outil",
       tags$b("ERC-Lynx"), "ici :",
    a("www.erc-lynx.fr", href="https://www.erc-lynx.fr/", target="_blank"),"."),
    h4("Veuillez trouver ci-dessous plusieurs",
    tags$b("supports et informations pour faciliter l'utilisation"),
           "de cet outil.")
    ),
    br()
        ),
    

        
        # ---- Manuel d'utilisation ----
        tabPanel(h4(tags$b("Manuel d'utilisation")), 
                 br(),
                 "Un manuel d'utilisation est disponible en version pdf ici :",
                 a("Manuel d'utilisation.", target="_blank", href="testPDF.pdf"),
                 br(),
                 br(),
                 "La majeure partie du document reprends des informations présentes sur l’interface de l’outil.",
                 br(),
                 "Seules les parties 'Connexion / Inscription', 'Résultats', 'Limite du nombre de scémario à lancer' et 'Contact' contiennent des informations supplémentaires qui ne sont pas présentées sur l’interface de l’outil.",
                 br(),
                 "Pour toutes les autres parties, le texte ainsi que les images présentées sont présentes sur l’interface de l’outil.",
                 "Aucune information complémentaire n’a été ajoutée dans ces parties sur ce document.",
                 br(),
                 br()
                 ),
        
        # ---- Tutoriel vidéos ----
        tabPanel(h4(tags$b("Tutoriel vidéos")),
                 br(),
                 "Voici un ensemble de tutoriel vidéos.",
                 "Chaque vidéo explique une étape du processus complet pour tester un scénario d'aménagement.",
                 br(),
                 br(),
                 navlistPanel(
                     tabPanel("1. Création d’un compte pour utiliser l’outil ERC-Lynx", 
                              tags$video(id="tuto1", type = "video/mp4",src = "testVideo1.mp4",
                                         controls = "controls", width = "600px")
                     ),
                     tabPanel("2. Connexion à l’outil ERC-Lynx avec un compte validé", 
                              tags$video(id="tuto2", type = "video/mp4",src = "testVideo2.mp4",
                                         controls = "controls", width = "600px")
                     ),
                     tabPanel("3. Présentation globale de l’outil",
                              tags$video(id="tuto3", type = "video/mp4",src = "testVideo1.mp4",
                                         controls = "controls", width = "600px")
                              ),
                     tabPanel("4. Modifier le réseau routier",
                              tags$video(id="tuto4", type = "video/mp4",src = "testVideo1.mp4",
                                         controls = "controls", width = "600px")
                              ),
                     tabPanel("5. Modifier le paysage",
                              tags$video(id="tuto5", type = "video/mp4",src = "testVideo1.mp4",
                                         controls = "controls", width = "600px")
                             ),
                     tabPanel("6. Modifier les populations de lynx",
                              tags$video(id="tuto6", type = "video/mp4",src = "testVideo1.mp4",
                                         controls = "controls", width = "600px")
                             ),
                     tabPanel("7. Lancer le modèle Lynx-Collision-Habitat pour tester le scénario d’aménagement",
                              tags$video(id="tuto7", type = "video/mp4",src = "testVideo1.mp4",
                                         controls = "controls", width = "600px")
                             ),
                     tabPanel("8. Réception des résultats",
                              tags$video(id="tuto8", type = "video/mp4",src = "testVideo1.mp4",
                                         controls = "controls", width = "600px")
                     ),
                     tabPanel("9. Interprétation des résultats",
                              tags$video(id="tuto9", type = "video/mp4",src = "testVideo1.mp4",
                                         controls = "controls", width = "600px")
                     )
                     ),
                     
        ),
                 
        # ---- FAQ ----
        tabPanel(h4(tags$b("FAQ")),
                 br(),
                 "Foire aux questions :",
                 br(),
                 br(),
                 tags$p(tags$b("Modifier les populations de lynx")),
                 tags$ul(
                     tags$li(tags$b("Les données de présence de lynx utilisées pour recréer des populations théoriques sont de 2017.",
                                    "Je sais que depuis cette date, 5 lynx sont morts dans mon aire d'étude.",
                                    "Est-ce que je dois retirer ces 5 lynx dans mon scénario d'aménagement ?")),
                     tags$em("Non. L'impact du scénario d'aménagement que vous testez est comparé à un état original où ces 5 lynx sont présents.",
                     "Si vous retirez 5 lynx, cela fait partie des actions d'aménagement que vous souhaitez testées.",
                     "Les résultats de votre sécnario d'aménagement seront forcément négatifs sur la viabilité du lynx car vous 'dites' que votre aménagement va tuer 5 lynx.",
                     "Les modifications faites usr les populations de lynx doivent représenter les impacts d'aménagements à tester, pas une mise à jour des données.",
                     "Une mise à jour des données lynx sera effectuée par notre équipe."),
                     br(),
                     br(),
                     tags$li(tags$b("Question 2 :")),
                     tags$em("Réponse 2"),
                     br(),
                     br(),
                     tags$li(tags$b("Question 3 :")),
                     tags$em("Réponse 3")
                 )),
        
        # ---- Contact ----
        tabPanel(h4(tags$b("Contact")),
                 br(),
                 "Pour toutes questions relatives à l’utilisation de l’outil et l’interprétation des résultats, contactez :",
                 br(), br(),
                 (tags$b("Sarah BAUDUIN")), br(),
                 "Chargée de Recherche Grands Carnivores", br(),
                 "Direction de la Recherche et Appui Scientifique", br(),
                 "Service Conservation et Gestion des Espèces à Enjeux", br(),
                 tags$b("Office Français de la Biodiversité"), br(),
                 "147, avenue de Lodève, 34990 JUVIGNAC", br(),
                 "Mél : sarah.bauduin@ofb.gouv.fr", br(),
                 img(src = "logoOFB.jpg", width = "18%")
                 )),
    
    br(),
    
    HTML('<center><img src="piedPage.jpg"></center>'),
    
)

server <- function(input, output){}

shinyApp(ui = ui, server = server)