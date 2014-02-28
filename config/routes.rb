KFreezePop::Application.routes.draw do

  devise_for :users,
             controllers: {omniauth_callbacks: "omniauth_callbacks"}

  # guy groups
  match '/2am',    to: 'guy_groups#2am',    via: 'get'
  match '/2pm',    to: 'guy_groups#2pm',    via: 'get'
  match '/bangtan-boys',    to: 'guy_groups#bangtan_boys',    via: 'get'
  match '/bap',    to: 'guy_groups#bap',    via: 'get'
  match '/beast',    to: 'guy_groups#beast',    via: 'get'
  match '/big-bang',    to: 'guy_groups#big_bang',    via: 'get'
  match '/c-clown',    to: 'guy_groups#c_clown',    via: 'get'
  match '/cn-blue',    to: 'guy_groups#cn_blue',    via: 'get'
  match '/exo',    to: 'guy_groups#exo',    via: 'get'
  match '/f-cuz',    to: 'guy_groups#f_cuz',    via: 'get'
  match '/ft-island',    to: 'guy_groups#ft_island',    via: 'get'
  match '/infinite',    to: 'guy_groups#infinite',    via: 'get'
  match '/mblaq',    to: 'guy_groups#mblaq',    via: 'get'
  match '/nu-est',    to: 'guy_groups#nu_est',    via: 'get'
  match '/shinee',    to: 'guy_groups#shinee',    via: 'get'
  match '/ss501',    to: 'guy_groups#ss501',    via: 'get'
  match '/super-junior',    to: 'guy_groups#super_junior',    via: 'get'
  match '/teen-top',    to: 'guy_groups#teen_top',    via: 'get'
  match '/tvxq',    to: 'guy_groups#tvxq',    via: 'get'
  match '/u-kiss',    to: 'guy_groups#u_kiss',    via: 'get'
  match '/vixx',    to: 'guy_groups#vixx',    via: 'get'
  match '/ze-a',    to: 'guy_groups#ze_a',    via: 'get'

  #girl groups
  match '/2ne1',    to: 'girl_groups#2ne1',    via: 'get'
  match '/4minute',    to: 'girl_groups#4minute',    via: 'get'
  match '/after-school',    to: 'girl_groups#after_school',    via: 'get'
  match '/apink',    to: 'girl_groups#apink',    via: 'get'
  match '/brown-eyed-girls',    to: 'girl_groups#brown_eyed_girls',    via: 'get'
  match '/chocolat',    to: 'girl_groups#chocolat',    via: 'get'
  match '/dalshabet',    to: 'girl_groups#dalshabet',    via: 'get'
  match '/fX',    to: 'girl_groups#fX',    via: 'get'
  match '/girls-day',    to: 'girl_groups#girls_day',    via: 'get'
  match '/girls-generation',    to: 'girl_groups#girls_generation',    via: 'get'
  match '/kara',    to: 'girl_groups#kara',    via: 'get'
  match '/miss-A',    to: 'girl_groups#miss_a',    via: 'get'
  match '/secret',    to: 'girl_groups#secret',    via: 'get'
  match '/sistar',    to: 'girl_groups#sistar',    via: 'get'
  match '/t-ara',    to: 'girl_groups#t_ara',    via: 'get'
  match '/wonder-girls',    to: 'girl_groups#wonder_girls',    via: 'get'

  #male solo
  match '/jay-park',    to: 'male_solo#jay_park',    via: 'get'
  match '/jun-hyung',    to: 'male_solo#jun_hyung',    via: 'get'
  match '/k-will',    to: 'male_solo#k_will',    via: 'get'
  match '/kim-hyun-joong',    to: 'male_solo#kim_hyun_joong',    via: 'get'
  match '/kim-jong-kook',    to: 'male_solo#kim_jong_kook',    via: 'get'
  match '/kim-kyung-rok',    to: 'male_solo#kim_kyung_rok',    via: 'get'
  match '/psy',    to: 'male_solo#psy',    via: 'get'
  match '/rain',    to: 'male_solo#rain',    via: 'get'
  match '/seo-in-guk',    to: 'male_solo#seo_in_guk',    via: 'get'
  match '/taeyang',    to: 'male_solo#taeyang',    via: 'get'

  #female solo
  match '/ailee',    to: 'female_solo#ailee',    via: 'get'
  match '/boa',    to: 'female_solo#boa',    via: 'get'
  match '/heyne',    to: 'female_solo#heyne',    via: 'get'
  match '/iu',    to: 'female_solo#iu',    via: 'get'
  match '/juniel',    to: 'female_solo#juniel',    via: 'get'
  match '/kim-hyuna',    to: 'female_solo#kim_hyuna',    via: 'get'
  match '/kim-yerim',    to: 'female_solo#kim_yerim',    via: 'get'
  match '/kim-yuna',    to: 'female_solo#kim_yuna',    via: 'get'
  match '/lee-hyori',    to: 'female_solo#lee_hyori',    via: 'get'
  match '/ns-yoon-g',    to: 'female_solo#ns_yoon_g',    via: 'get'
  match '/seo-in-young',    to: 'female_solo#seo_in_young',    via: 'get'
  match '/son-dam-bi',    to: 'female_solo#son_dam_bi',    via: 'get'

  #hip hop
  match '/beenzino',    to: 'hip_hop#beenzino',    via: 'get'
  match '/dynamic-duo',    to: 'hip_hop#dynamic_duo',    via: 'get'
  match '/g-dragon',    to: 'hip_hop#g_dragon',    via: 'get'
  match '/gaeko',    to: 'hip_hop#gaeko',    via: 'get'
  match '/leessang',    to: 'hip_hop#leessang',    via: 'get'
  match '/outsider',    to: 'hip_hop#outsider',    via: 'get'
  match '/primary',    to: 'hip_hop#primary',    via: 'get'
  match '/san-e',    to: 'hip_hop#san_e',    via: 'get'
  match '/simon-d',    to: 'hip_hop#simon_d',    via: 'get'
  match '/tablo',    to: 'hip_hop#tablo',    via: 'get'
  match '/top',    to: 'hip_hop#top',    via: 'get'
  match '/verbal-jint',    to: 'hip_hop#vernal_jint',    via: 'get'
  match '/zion-t',    to: 'hip_hop#zion_t',    via: 'get'


  root "welcome#index"
end
