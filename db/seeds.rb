Header.find_or_create_by!(video_url: 'header-law.mp4', title: 'Innovis Law Partners', subtitle: 'Everything in Legal solutions', description: 'IPR | Corporate | Civil | Criminal')

 
FooterContent.create(
  contact_phone: '+91-9144526224',
  contact_email: 'info@innovispartners.com',
  services: "Consulting\nLitigation\nDocumentation\nArbitration",
  verticals: "Corporate\nIPR\nCivil\nCriminal",
  legal: "Terms\nLegal\nPrivacy\nLicense"
)


CountSection.create(
  image: 'count-1.png',
  number: '10+',
  text: 'Years in Business'
)

CountSection.create(
  image: 'count-2.png',
  number: '1500+',
  text: 'Successful Cases'
)

CountSection.create(
  image: 'count-3.png',
  number: '1000+',
  text: 'Satisfied Clients'
)

CountSection.create(
  image: 'count-4.png',
  number: '25+',
  text: 'Pro Consultants'
)


Navbar.create!(title: 'Home', link: '#', position: 1)
Navbar.create!(title: 'Services', link: '#service-section', position: 2)
Navbar.create!(title: 'Blog', link: 'https://innovisposts.godaddysites.com/', position: 3)
Navbar.create!(title: 'Team', link: '#team_section', position: 4)
Navbar.create!(title: 'Contact Us', link: '#footer-section', position: 5)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')


Address.create!(
  city: "Bhopal",
  street: "704, Vijay Stambh, Opp. Vishal Megamart Zone-I - M.P. Nagar",
  details: "Bhopal - 462023 (M.P.) India"
)

Address.create!(
  city: "Indore",
  street: "801, Victoria Urban, 12 Park Rd, Vallabh Nagar",
  details: "Indore, (M.P.) India"
)

Address.create!(
  city: "Bengaluru",
  street: "Golden Square Services And Virtual offices, Vittal Mallya Road",
  details: "Bengaluru, Karnataka 560001"
)

Address.create!(
  city: "Mumbai",
  street: "206, 2nd floor, Aqua, Church gate Chambers, 5 New Marine Lines",
  details: "Mumbai 400020"
)

Address.create!(
  city: "Delhi",
  street: "D-19 LGF, Kailash Colony, Greater Kailash I",
  details: "New Delhi"
)




TeamMember.create([
  { name: 'Ankur Pastor', image: '1.ankur.png', designation: 'Managing Partner' },
  { name: 'Ayush Bharadwaj', image: '4.ayush.png', designation: 'Senior Associate' },
  { name: 'Shubhi Dubey', image: '2.surbhi.png', designation: 'Partner' },
  { name: 'Mohit Soni', image: '5.mohit.png', designation: 'Senior Associate' },
  { name: 'Rishabh Mishra', image: '3.risabh.png', designation: 'Partner' },
  { name: 'Kanishka Jain', image: '6.kanishka.png', designation: 'Associate' },
  { name: 'Aviral Aind', image: '9.aviral.png', designation: 'Associate' },
  { name: 'Khushi Palawat', image: '7.khushi.png', designation: 'Associate' },
  { name: 'Hemant Bishnoi', image: '10.hemant.png', designation: 'Associate' },
  { name: 'Akshita Singh', image: '8.akshita.png', designation: 'Associate' }
])



Testimonial.create([
  { profile_image: 'G', reviewer_name: 'Global Infrastructure Pvt. Ltd.', review_text: 'I had an excellent experience working with Innovis Law Partners. Their team demonstrated exceptional expertise and professionalism.', initial: 'G' },
  { profile_image: 'L', reviewer_name: 'Lion Engineering Consultant Pvt Ltd', review_text: 'Their knowledge of the law and strategic approach led to a successful outcome for my case.', initial: 'L' },
  { profile_image: 'R', reviewer_name: 'Ricky William Innovation Pvt Ltd.', review_text: 'Overall, I would highly recommend Innovis Law Partners to anyone seeking dedicated legal representation.', initial: 'R' },
  { profile_image: 'C', reviewer_name: 'Cinepolis India Pvt Ltd', review_text: 'This review highlights key aspects that clients often value: expertise, communication, accessibility, and successful outcomes.', initial: 'C' }
])





Service.create(
  [
    { title: 'Intellectual Property Rights', description: 'We specialize in the dynamic realm of intellectual property law, encompassing TRADEMARK, COPYRIGHT.', image: 'service-1.png', slug: 'intellectual-property-rights' },
    { title: 'Startup Advisory and Compliance', description: 'We have a proven track record of supporting early-stage startups worldwide, leveraging our extensive industry experience.', image: 'service-2.png', slug: 'startup-advisory-and-compliance' },
    { title: 'MSME Litigation and Compliance', description: 'We understand the unique legal needs and challenges faced by Micro, Small, and Medium Enterprises (MSMEs).', image: 'service-3.png', slug: 'msme-litigation-and-compliance' },
    { title: 'Employment Law', description: 'We have extensive experience advising on labor, employment, social security, and industrial relation laws.', image: 'service-4.png', slug: 'employment-law' },
    { title: 'Real Estate Regulation and Development Services', description: 'We offer specialized legal services to assist clients in navigating the intricacies of real estate regulation.', image: 'service-5.png', slug: 'real-estate-regulation-and-development-services' },
    { title: 'Environmental Law', description: 'Our legal team possesses extensive experience in both civil and criminal environmental litigation matters.', image: 'service-6.png', slug: 'environmental-law' },
    { title: 'Sports Law', description: 'With a deep understanding of the sports industry, we offer comprehensive knowledge in all aspects of sports litigation.', image: 'service-7.png', slug: 'sports-law' },
    { title: 'TMT Law', description: 'Our TMT services stand at the forefront of the industry, providing clients with cutting-edge insights and solutions.', image: 'service-8.png', slug: 'tmt-law' },
    { title: 'Arbitration And Conciliation', description: 'We help our clients to resolve conflict more easily and swiftly without it becoming the matter of litigation. It is beneficial for both the parties to resolve a dispute at the earliest.', image: 'Arbitration.png', slug: 'arbitration-and-conciliation' },
    { title: 'Startups', description: 'We provide our clients with proper legal counsel during the formation of their startups. It’s the most crucial point when careful documentation and strategic efficiencies are crucial to their success.', image: 'startup.png', slug: 'startup' },
    { title: 'Corporate Laws', description: 'We deal with complex corporate transactions which deal with foreign direct investment and overseas direct investments. We are known for the quality of service that we provide.', image: 'corporate.png', slug: 'corporate-laws' },
    { title: 'Legal Audits', description: 'Our legal auditing will help our clients to isolate any inappropriate or inefficient billing practice that will unnecessarily increase their legal fees.', image: 'audits.png', slug: 'legal-audits' }

  ]
)


ServiceHeader.create(
  title: 'Our Services',
  image: 'service_header_img.png'
)


ServiceContent.create!(
  [
    {
      service_id: Service.find_by(slug: 'intellectual-property-rights').id,
      content: 'We, at INNOVIS LAW PARTNERS, specialize in the dynamic realm of intellectual property law, encompassing TRADEMARK, COPYRIGHT, PATENT, DESIGN, GEOGRAPHICAL INDICATION and other intellectual property rights. Our comprehensive services range from advising on the scope and nature of IP protection available in India to assisting in the meticulous search and registration processes for trademarks, copyrights, patents, and designs. We diligently manage all post-registration requirements, including enforcement of IP rights, in-licensing and out-licensing agreements, and loan licensing arrangements, IP Transfer and Assignment Agreements.'
    },
    {
      service_id: Service.find_by(slug: 'startup-advisory-and-compliance').id,
      content: 'We have a proven track record of supporting early-stage startups worldwide, leveraging our extensive industry experience gained from advising large corporations and multinationals. Our dedicated team of lawyers specializes in providing tailored legal solutions to address the unique challenges faced by startups, including valuation, transactions, deal support, and ESOPs (Employee Stock Ownership Plans).'
    },
    {
      service_id: Service.find_by(slug: 'msme-litigation-and-compliance').id,
      content: 'INNOVIS LAW PARTNERS understands the unique legal needs and challenges faced by Micro, Small, and Medium Enterprises (MSMEs), and we offer tailored legal services to support their growth and success.'
    },
    {
      service_id: Service.find_by(slug: 'employment-law').id,
      content: 'We have extensive experience in advising on issues concerning labor, employment, social security, and industrial relation laws. We specialize in providing insightful counsel on the complex legal and regulatory landscape surrounding human resources, labor, and industrial relations.'
    },
    {
      service_id: Service.find_by(slug: 'real-estate-regulation-and-development-services').id,
      content: 'We provide comprehensive guidance on RERA compliance requirements, including registration of real estate projects, filing of documents and disclosures, maintenance of project accounts, and adherence to project timelines.'
    },
    {
      service_id: Service.find_by(slug: 'environmental-law').id,
      content: 'Our legal team possesses extensive experience in both civil and criminal environmental litigation matters. Companies face significant risks associated with environmental issues, ranging from waste disposal to air emissions and underground storage tanks.'
    },
    {
      service_id: Service.find_by(slug: 'sports-law').id,
      content: 'With a deep understanding of the sports industry, we offer comprehensive knowledge in all aspects of sports litigation. We are particularly adept at navigating the complex marketing and branding challenges faced by companies in this sector.'
    },
    {
      service_id: Service.find_by(slug: 'tmt-law').id,
      content: 'Our TMT services stand at the forefront of the industry, providing clients with cutting-edge insights and commercial solutions backed by extensive sector experience. We specialize in areas such as outsourcing, IP strategy, media and broadcasting, and technology transactions.'
    }
  ]
)
