Skill.destroy_all
User.destroy_all
UserSkill.destroy_all
Match.destroy_all

samurai = Skill.create(name:'Samurai')
magic = Skill.create(name: 'Magic')
coding = Skill.create(name: 'Coding')
dance_moves = Skill.create(name: 'Awesome Dance Moves')


john = User.create(name: 'John', job_title: 'Musician', type_of:'mentee', location: 'D.C.', bio: "He likes to play...", email: 'jdawg@hotmail.com', password: 'pw')
josh = User.create(name: 'Josh', job_title: "Bartender", type_of: 'mentee', location: 'Winchester', bio: "Pours his heart out", email: 'jmoneymils@gmail.com', password: 'pw')
emily = User.create(name: 'Emily', job_title: 'HR', type_of: 'mentee', location: 'Colorado Springs', bio: "She's the workplace fixer", email: 'emazing@aol.com',  password: 'pw')
ryan = User.create(name: 'Ryan', job_title: 'BioTech', type_of: 'mentee', location: 'Boston', bio: 'Biotechs', email: 'rysty@visuallink.com', password: 'pw')
ruby = User.create(name: 'Ruby', job_title:'Student', type_of: 'mentee', location: 'Miami', bio: "Needs to learn a thing or two", email: 'rubysnotdaimonds@hotmail.com', password: 'pw')
alvaro = User.create(name: 'Alvaro', job_title: "Fitness Instructor", type_of: 'mentee', location:'Texas', bio: 'Here to pump you up', email: 'alvaroooo@gmail.com', password: 'pw')
ayana = User.create(name: 'Ayana', job_title:'Artist', type_of: 'mentee', location: 'D.C.', bio: 'THE Artist', email: 'ayanabanana@gmail.com', password: 'pw')
andres = User.create(name: 'Andres', job_title: 'Coder', type_of: 'mentee', location: 'Venezuela', bio: 'Learning code', email: 'andresfault@hotmail.com', password: 'pw')

ann = User.create(name:'Ann', job_title: 'Javascript Master Coder', type_of: 'mentor', location: "D.C.", bio: 'She likes to code', email: 'ann@flatiron.com', password: 'pw')
rob = User.create(name: 'Rob', job_title: 'Master Instructor', type_of: 'mentor', location: 'D.C', bio: 'Master Coder', email: 'rob@flatiron.com', password: 'pw')
hillary = User.create(name: 'Hillary', job_title: ' Master T.A.', type_of: 'mentor', location:'D.C.', bio: 'Film School grad', email: 'hillary@flatiron.com', password: 'pw')


match1 = Match.create(mentor_id: rob.id, mentee_id: john.id)

j_skills = UserSkill.create(skill_id: magic.id, user_id: john.id, number_of_years_experience: 1)
r_skills = UserSkill.create(skill_id: magic.id, user_id: rob.id, number_of_years_experience: 15)
