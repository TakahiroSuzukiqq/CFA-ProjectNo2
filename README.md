<p align="center">
<img src="https://image.ibb.co/fNvzqk/githublogofe.png" width="600" />
</p>




# About the Project

In 2012, according to ILO (International Labour Organization), there are 168 million children who aged between 5 to 17 work as a child labor.  
And Asia and the Pacific has the largest numbers (almost 78 million or 9.3% of child population).  
One of the reason children are engaged in working at thier early age is that they and thier parents are suffuring from poverty.  

In 2012 accoding to the World Bank, there estimated to be 900 million people who lives less than USD 1.9 per day.  
Its number is equal to more than 10% of world population.  

So, why poverty causes?  
One of the reason is they cannot get enough earnings because of exploitation from intermediary or less paied from their emplyer.  
There estimated to be more than 2 billion people who are engaged in working as a farmer, and about 50% of people in Asia and African countries are working as a farmer.  
They are regarded as cheaper labour force and thus, their products lile coffee, cacao or cotton are not dealing with proper price.  


Meanwhile, there is a movement which helps and supports people suffuring from poverty, in terms of international trading which is called fair trade.  
Fair trade is a fair treatment for farmers. In a fair trade agreement, farmers, who in other situations might be more susceptible to the will of the purchaser, will negotiate with the purchasers in order to receive a fair price for their products. Farmers who engage in fair trade also aim to pay their workers a fair price.  

Nowadays there estimated to be more than 74 countries, 1.5 million people can work under the fair trading and thier number are getting more and more.  
For example, an annuaturnover in fair trade market was AUD 46 million in 2010 and now it was more than AUD 120 million in Japan.  
And it was estimated to be more than AUD 10 billion annual turnover in global.  

But its number is still low so I would like to join this industory and help them selling thier products more and more via my application.  
And I'm also aiming at making international platform which supplyer and buyer or consumer can directory communicate via my application.  





# Thinking process  
To realize my idea, I started from brain storming with using Trello that what function will be needed for suppling people and peole who want to buy items.   


<img src="https://image.ibb.co/gUmgmQ/2017_04_26_2.png" alt="2017 04 26 2" border="0" />  

# Design process  
Then I tackled with my basic web page and also tried to think about each Model and thier relation with using the method called ERD (Entity-relationship Diagram)   

      <p align="center">  
        <img src="https://image.ibb.co/fvmLfk/plan2.jpg" alt="plan2" border="0" />  
      </p>  
      <p align="center">  
        <img src="https://image.ibb.co/dM2nRQ/2017_04_26_1.png" alt="2017 04 26 1" border="0" />  
      </p>  
      <p align="center">  
        <img src="https://image.ibb.co/dpcMmQ/2017_04_26.png" alt="2017 04 26" border="0" />  
      </p>  


# Core function  
Main core function is that  
1.users can see items posted by suppliers. And the User can be the Supplier via registration.  
2.Once Admin account give users a permission they can post items as Supplier.  
3.So Admin can grasp suppliers' information and users can buy items from authenticated supplier.  
4.User can leave cocmment to a each item.  
5.Suppler and User can post event or any message via Message board to communicate with each other.  

<p align="center">  
  <img src="https://image.ibb.co/hFEj6Q/2017_04_26_4.png" alt="2017 04 26 4" border="0" />  
</p>  

<p align="center">  
  <img src="https://image.ibb.co/cPo5D5/2017_04_26_6.png" alt="2017_04_26_6" border="0">  
</p>  

# Challenges  
1.Admin verification    
2.Image display  
3.Each relation, database, I had to add and change db many times   
4.API Install  



# Gems  
gem 'devise'    
gem 'bootstrap-sass', '~> 3.3.6'  
gem 'carrierwave', '~> 1.0'  
gem "rolify"  
gem "pundit"  
gem 'stripe'  
gem 'simple_form'  
gem 'pry'  
gem 'ransack'  
gem 'mini_magick'  
gem 'rspec-rails', '~> 3.5'  
gem 'rails-controller-testing'  
gem 'omniauth-facebook'  


# Install process  
1.Devise install and user model create, index page create  
2.Making scaffold of the application with creating models (post, comment, supplier, comment, message)  
3.Image uploader install  
4.User type, role add  
5.Payment function install  
6.Mailing function install  
7.Tesing  
8.API install  


# Future plan  
1.Increasing products (e.g. Cacao, Tea, Banana, Cotton)  
2.Add pages for corporate people, company for bulk trading  
3.Trading function (e.g. consultation, transfort cost estimation)  
4.Encourage upmarket brand company to buy raw materials from fair trade supplier via my app & sell products via my app  
  
