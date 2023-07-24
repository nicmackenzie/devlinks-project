puts "👨‍🦱 Seeding user data..."

User.create(user_name: 'Nick Mackenzie', email: 'nicmackenzie@live.com',devtype: 'full stack',experience: 4,image_url: 'https://igqjyslipxclzwcefxrb.supabase.co/storage/v1/object/public/avatars/nick_mackenzie.jpg')
User.create(user_name: 'Angela Yu', email: 'angela@techbrew.io',devtype: 'full stack',experience: 15,image_url: 'https://igqjyslipxclzwcefxrb.supabase.co/storage/v1/object/public/avatars/angela_yu.jpg')
User.create(user_name: 'Brad Pitt', email: 'pitt@brajelina.org',devtype: 'frontend',experience: 5,image_url: 'https://igqjyslipxclzwcefxrb.supabase.co/storage/v1/object/public/avatars/brad_pitt.jpg')
User.create(user_name: 'Angelina Jolie', email: 'angelina@brajelina.org',devtype: 'backend',experience: 8,image_url: 'https://igqjyslipxclzwcefxrb.supabase.co/storage/v1/object/public/avatars/jelina_jolie.jpg')

puts "📳 Seeding stacks data..."

Stack.create(stack_name: 'Python')
Stack.create(stack_name: 'Javascript')
Stack.create(stack_name: 'HTML/CSS')
Stack.create(stack_name: 'React')
Stack.create(stack_name: 'Vue')
Stack.create(stack_name: 'Angular')
Stack.create(stack_name: 'Ruby')
Stack.create(stack_name: 'Sinatra')
Stack.create(stack_name: 'Ruby on rails')
Stack.create(stack_name: 'Flask')
Stack.create(stack_name: 'Django')

puts "✅ Done seeding!"
