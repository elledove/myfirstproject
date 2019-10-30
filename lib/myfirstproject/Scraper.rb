class MYFIRSTPROJECT::SCRAPER

def fetch #change it to match the url names
    firsthtml = open("https://www.hsvc.org/contact_us") #Humane Society Ventura County
    

    doc = Nokogiri::HTML(firsthtml)
    #binding.pry
end


 def grab

    secondhtml = open("https://carldogs.org/contact/") #C.A.R.L.S Dogs

    docs = Nokogiri::HTML(secondhtml)
    #b[0].children[1]
    docs.css("div.page-content").css("div.textwidget").each do |info|
        #binding.pry
    end
   end

def catch

    thirdhtml = open("https://www.pawworks.org/adoption-locations/") #pawsworks

    doc = Nokogiri::HTML(thirdhtml)
    #binding.pry

end

def cats_cradle

    html = open("https://www.catscradlerescue.org/info/contact") #catscradle
    doc = Nokogiri::HTML(html)
    #binding.pry
end


 def santa_paula
    html = open("http://www.santapaulaarc.org/contact.html")
    doc = Nokogiri::HTML(html)
    #binding.pry

 end



 def purrfect
    html = open ("http://www.thepurrfectcat.com/contact.html")
    doc = Nokogiri::HTML(html)
    #binding.pry
 end



 def surf_cat

    html = open("https://surfcatcafe.org/contact-us/")
    doc = Nokogiri::HTML(html)
    #binding.pry
 end



 def grey_cat
    html = open("https://greyfootcat.rescuegroups.org/animals/browse?Status=Available")
    doc = Nokogiri::HTML(html)
    binding.pry

 end


end


#THIS IS THE INFO FOR THE FIRST WEBSITE!-hsvc
#phone number = doc.css("div.right-column").css("h2").first.text
#address = doc.css("div.right-column").css("p").text
#email = doc.css("div.left-column").css("a").first.text 
#hours = doc.css("div.left-column").css("li").first.text // doc.css("div.left-column").css("li").text


#THIS IS THE INFO FOR THE SECOND WEBSITE!-carlsdogs
#phone number = info.children[1].text 
#address = info.children[21].text << the street address & info.children[23].text << the city,zip
#email = info.children[6].text



#THIS IS FOR THE THIRD WEBSITE!-pawsworks
#locaton ONLY = doc.css("div.vc_col-sm-6.wpb_column.vc_column_container").children[3].css("span").first.text
# address = doc.css("div.vc_col-sm-6.wpb_column.vc_column_container").children[3].css("span").children[1].text
#city,state,zip = doc.css("div.vc_col-sm-6.wpb_column.vc_column_container").children[3].css("span").children[2].text

#hours1 = doc.css("div.vc_col-sm-6.wpb_column.vc_column_container").children[3].css("span").children[6].text
#hours2 = doc.css("div.vc_col-sm-6.wpb_column.vc_column_container").children[3].css("span").children[7].text
#hours3 = doc.css("div.vc_col-sm-6.wpb_column.vc_column_container").children[3].css("span").children[8].text
#phone number = doc.css("div.vc_col-sm-4.wpb_column.vc_column_container").children[2].css("span").children[0].text
#email =  doc.css("div.vc_col-sm-4.wpb_column.vc_column_container").children[2].css("a").children[1].text


#THIS IS FOR THE FOURTH WEBSITE!-catscradle
#Phone Number = doc.css("td#center").css("a").children[0].text
# email = doc.css("td#center").css("a").children[1].text
#address = doc.css("td#left").children[3].css("div").children[2].text


#THIS IS FOR THE FIFTH WEBSITE! -santapaula
#Address = doc.css("div#content").css("p").children[0].text
#adress2 = doc.css("div#content").css("p").children[2].text
#phone number = doc.css("div#content").css("p").children[3].text
# email = doc.css("div#content").css("p").children[6].text
#hours = doc.css("div#content").css("p").children[12].text


#THIS IS FOR THE SIXTH WEBSITE!-thepurrfectcat
#phone number = doc.css("div#wsb-element-77b9834f-4057-4d78-9a85-3c2c3a6e1cc1.wsb-element-text").children[1].css("p").children[0].text
#address = doc.css("div#wsb-element-77b9834f-4057-4d78-9a85-3c2c3a6e1cc1.wsb-element-text").children[1].css("p").children[6].text
#hours-tues = doc.css("div#wsb-element-6d152260-56cd-40d4-932f-1845f3b4432e.wsb-element-text").children[1].css("span").children[8].text
#hours-wed = doc.css("div#wsb-element-6d152260-56cd-40d4-932f-1845f3b4432e.wsb-element-text").children[1].css("span").children[12].text
#hours-thur = doc.css("div#wsb-element-6d152260-56cd-40d4-932f-1845f3b4432e.wsb-element-text").children[1].css("span").children[14].text
#hours-fri = doc.css("div#wsb-element-6d152260-56cd-40d4-932f-1845f3b4432e.wsb-element-text").children[1].css("span").children[17].text
#hours-sat = doc.css("div#wsb-element-6d152260-56cd-40d4-932f-1845f3b4432e.wsb-element-text").children[1].css("span").children[20].text
#hours-sun = doc.css("div#wsb-element-6d152260-56cd-40d4-932f-1845f3b4432e.wsb-element-text").children[1].css("span").children[22].text


#THIS IS FOR THR SEVENTH WEBSITE!-surfcat
#address = doc.css("section#text-2.widget.widget_text").children[2].css("p").children[0].text
#email- for some reason its protect = doc.css("section#text-2.widget.widget_text").children[2].css("p").children[5].text
#phone number = doc.css("section#text-2.widget.widget_text").children[2].css("p").children[7].text


#THIS IS FOR THE EIGHT WEBSITE!-greyfoot
#location-name = doc.css("div#editableBrowseTop").children[4].text
#address = doc.css("div#editableBrowseTop").children[6].text
#city,state = doc.css("div#editableBrowseTop").children[8].text
#hours = doc.css("div#editableBrowseTop").children[10].text
#phone = doc.css("div#editableBrowseTop").children[12].children[0].children[1].text.split(" ")[6]
#email = doc.css("div#editableBrowseTop").children[12].css("a").text 