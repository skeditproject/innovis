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

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


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



# TeamMember.create([
#   { name: 'Ankur Pastor', designation: 'Managing Partner', image: '1.ankur.png', position: 'Senior Associate' },
#   { name: 'Surbhi Dubey', designation: 'Partner', image: '2.surbhi.png', position: 'Partner' },
#   { name: 'Rishabh Mishra', designation: 'Partner', image: '3.risabh.png', position: 'Partner' },
#   { name: 'Ayush Bharadwaj', designation: 'Managing Partner', image: '4.ayush.png', position: 'Managing Partner' },
#   { name: 'Shubhi Dubey', designation: 'Senior Associate', image: '5.mohit.png', position: 'Senior Associate' },
#   { name: 'Kanishka Jain', designation: 'Associate', image: '6.kanishka.png', position: 'Associate' },
#   { name: 'Khushi Palawat', designation: 'Associate', image: '7.khushi.png', position: 'Associate' },
#   { name: 'Akshita Singh', designation: 'Associate', image: '8.akshita.png', position: 'Associate' },
#   { name: 'Aviral Aind', designation: 'Associate', image: '9.aviral.png', position: 'Associate' },
#   { name: 'Hemant Bishnoi', designation: 'Associate', image: '10.hemant.png', position: 'Associate' }
# ]).each do |team_member|
#   if team_member.persisted?
#     puts "Successfully created #{team_member.name}"
#   else
#     puts "Failed to create #{team_member.name}: #{team_member.errors.full_messages.join(", ")}"
#   end
# end




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
      heading: 'What is Intellectual Property Rights?',
      paragraph: 'We, at INNOVIS LAW PARTNERS, specialize in the dynamic realm of intellectual property law, encompassing TRADEMARK, COPYRIGHT, PATENT, DESIGN, GEOGRAPHICAL INDICATION and other intellectual property rights. Our comprehensive services range from advising on the scope and nature of IP protection available in India to assisting in the meticulous search and registration processes for trademarks, copyrights, patents, and designs. We diligently manage all post-registration requirements, including enforcement of IP rights, in-licensing and out-licensing agreements, and loan licensing arrangements, IP Transfer and Assignment Agreements.',
      list: ""
    },
    {
      service_id: Service.find_by(slug: 'intellectual-property-rights').id,
      heading: 'Our expertise',
      paragraph: "Our expertise extends to navigating the complexities of cyber law, including resolving domain name disputes and addressing intellectual property issues in emerging sectors such as software, internet, entertainment, and manufacturing industries. We provide strategic counsel to clients on the enforcement and protection of intellectual property rights, including trademarks, copyrights, and patents.",
      list: ""
    },
    {
      service_id: Service.find_by(slug: 'intellectual-property-rights').id,
      heading: 'Our seasoned team',
      paragraph: "Our seasoned team is adept at handling diverse projects across multiple sectors, including manufacturing, technology, chemistry, life sciences, engineering, and business methods. From drafting and filing to prosecuting and defending intellectual property rights through all phases, We are committed to delivering tailored solutions and safeguarding our clients' innovative assets." ,
      list: ""
    },

    {
      service_id: Service.find_by(slug: 'startup-advisory-and-compliance').id,
      heading: 'Proven Track Record',
      paragraph: 'We have a proven track record of supporting early-stage startups worldwide, leveraging our extensive industry experience gained from advising large corporations and multinationals. Our dedicated team of lawyers specializes in providing tailored legal solutions to address the unique challenges faced by startups, including valuation, transactions, deal support, and ESOPs (Employee Stock Ownership Plans).',
      list: ""
    },
    {
      service_id: Service.find_by(slug: 'startup-advisory-and-compliance').id,
      heading: 'Key Areas of Assistance',
      paragraph: "",
      list: <<-LIST
        Capital Structure Simplification: We help startups navigate complex capital structures, including liquidation preferences, co-founder agreements, and licensing requirements, ensuring clarity and transparency in their corporate governance.
        Funding Round Analysis: Our team conducts thorough analyses of affirmative rights, conversion rights, and indemnification provisions during funding rounds, empowering startups to negotiate favorable terms and secure investment opportunities.
        ESOP Scheme Customization: We assist startups in designing customized Employee Stock Ownership Plans (ESOPs), creating vesting schedules, and establishing trusts to incentivize and retain key talent, while aligning with the company's growth objectives.
        Intellectual Property Protection: We provide strategic counsel on protecting intellectual property assets, including patents, trademarks, copyrights, and trade secrets, to safeguard startups' innovative ideas and technologies.
        Data Privacy Compliance: We ensure startups remain compliant with evolving data privacy and protection regulations, offering guidance on implementing robust data protection measures and mitigating risks associated with data breaches and compliance failures.
        Due Diligence: Our experienced team conducts thorough due diligence assessments to evaluate the legal, financial, and operational aspects of startups, enabling founders to identify potential risks and opportunities before entering into transactions or partnerships.
        Term Sheet Guidance: We guide startups through the negotiation and drafting of term sheets, ensuring clarity and alignment of key terms and conditions with the company's strategic objectives and investor expectations.
        Valuation Report Analysis: We assist startups in analyzing valuation reports to understand the underlying methodologies, assumptions, and factors influencing the valuation of their business, empowering them to make informed decisions in fundraising and strategic planning.
        Strategic Guidance: Our seasoned attorneys provide strategic guidance and advisory services to startups on a wide range of business and legal matters, including market entry strategies, growth planning, risk management, and corporate governance best practices.
      LIST
    },
    {
      service_id: Service.find_by(slug: 'startup-advisory-and-compliance').id,
      heading: 'Holistic Approach',
      paragraph: 'We understand the critical legal aspects that impact the growth and success of startups, and we assist founders and entrepreneurs in making well-informed decisions that align with their long-term goals. Our holistic approach combines traditional legal practices with cutting-edge industry insights to safeguard the interests of startup founders at every stage of their business journey.',
      list: ""
    },

    {
      service_id: Service.find_by(slug: 'msme-litigation-and-compliance').id,
      heading: 'Unique Legal Needs of MSMEs',
      paragraph: 'INNOVIS LAW PARTNERS understands the unique legal needs and challenges faced by Micro, Small, and Medium Enterprises (MSMEs), and we offer tailored legal services to support their growth and success.',
      list: ""
    },
    {
      service_id: Service.find_by(slug: 'msme-litigation-and-compliance').id,
      heading: 'Comprehensive Range of MSME Legal Services',
      paragraph: '',
      list: <<-LIST
        Entity Formation and Registration: We assist MSMEs in choosing the appropriate legal structure, such as sole proprietorship, partnership, LLP, or private limited company, and guide them through the registration process.
        Compliance Management: Our firm helps MSMEs navigate complex regulatory requirements and ensures compliance with applicable laws, regulations, and statutory obligations, including labor laws, taxation laws, and industry-specific regulations.
        Contract Drafting and Review: We draft, review, and negotiate various types of contracts and agreements essential for MSMEs, including vendor agreements, customer contracts, lease agreements, and employment contracts.
        Debt Recovery and Dispute Resolution: Our experienced litigators represent MSMEs in debt recovery proceedings, contract disputes, and other legal disputes, striving to achieve favorable outcomes through negotiation, mediation, or litigation.
        MSME Courts: We have represented over 80 MSMEs in the Courts for debt recovery proceedings.
      LIST
    },


    {
      service_id: Service.find_by(slug: 'employment-law').id,
      heading: 'Comprehensive Employment Law Expertise',
      paragraph: 'We have extensive experience in advising on issues concerning labor, employment, social security, and industrial relation laws. We specialize in providing insightful counsel on the complex legal and regulatory landscape surrounding human resources, labor, and industrial relations.',
      list: ""
    },
    {
      service_id: Service.find_by(slug: 'employment-law').id,
      heading: 'Guidance on Human Resource Management',
      paragraph: 'Our firm is deeply involved in guiding clients through the intricate maze of human resource management, including obligations and compliances of employers, consequences of non-compliance, and issues related to employment termination, downsizing of the workforce, transfer of employees, and changes in service conditions.',
      list: ""
    },
    {
      service_id: Service.find_by(slug: 'employment-law').id,
      heading: 'Expert Guidance on Employee Benefits and Compliance',
      paragraph: 'We also provide expert guidance on contract labor, superannuation/voluntary retirement schemes, and aligning human resource strategies and policies to ensure maximum effectiveness while maintaining legal compliance.',
      list: <<-LIST
        Strategic advice on employee benefits such as gratuity, bonus, provident fund, and employee state insurance.
        Guidance on health and safety matters concerning employees.
        Advice on non-compete agreements, non-solicitation clauses, privacy regulations, and preventing discrimination and harassment in the workplace.
      LIST
    },

    {
      service_id: Service.find_by(slug: 'real-estate-regulation-and-development-services').id,
      heading: 'RERA Compliance Advisory',
      paragraph: 'We provide comprehensive guidance on RERA compliance requirements, including registration of real estate projects, filing of documents and disclosures, maintenance of project accounts, and adherence to project timelines.',
      list: ""
    },
    {
      service_id: Service.find_by(slug: 'real-estate-regulation-and-development-services').id,
      heading: 'Project Registration',
      paragraph: 'Our firm assists real estate developers and promoters in registering their projects with the appropriate RERA authorities, ensuring compliance with all statutory obligations and procedural requirements.',
      list: ""
    },
    {
      service_id: Service.find_by(slug: 'real-estate-regulation-and-development-services').id,
      heading: 'Consumer Complaints and Dispute Resolution',
      paragraph: 'We represent homebuyers, developers, and other stakeholders in RERA-related disputes, including filing and defending consumer complaints before the RERA authorities and appellate tribunals.',
      list: ""
    },
    {
      service_id: Service.find_by(slug: 'real-estate-regulation-and-development-services').id,
      heading: 'Contract Drafting and Review',
      paragraph: 'We draft, review, and negotiate various agreements and contracts related to real estate transactions, including sale agreements, lease agreements, development agreements, and joint venture agreements, ensuring compliance with RERA regulations.',
      list: ""
    },
    {
      service_id: Service.find_by(slug: 'real-estate-regulation-and-development-services').id,
      heading: 'Due Diligence and Compliance Audits',
      paragraph: 'Our team conducts due diligence reviews and compliance audits of real estate projects to assess their compliance with RERA provisions, identify potential risks, and mitigate legal liabilities.',
      list: ""
    },

    {
      service_id: Service.find_by(slug: 'environmental-law').id,
      heading: 'Extensive Environmental Litigation Experience',
      paragraph: 'Our legal team possesses extensive experience in both civil and criminal environmental litigation matters. Today, companies face significant risks associated with environmental issues, ranging from waste disposal to air emissions and underground storage tanks. We understand the potential criminal penalties and civil damages awards that can arise from environmental concerns.',
      list: ""
    },
    {
      service_id: Service.find_by(slug: 'environmental-law').id,
      heading: 'Defense Against Environmental Claims',
      paragraph: 'We assist clients in defending against claims related to a wide variety of environmental issues and obtaining insurance coverage for remediating contamination. Our representation extends to criminal investigations, grand jury proceedings, and the handling of hazardous chemicals and waste in storage, transportation, disposal, and discharge.',
      list: ""
    },
    
    {
      service_id: Service.find_by(slug: 'sports-law').id,
      heading: 'Comprehensive Sports Litigation Expertise',
      paragraph: 'With a deep understanding of the sports industry, we offer comprehensive knowledge in all aspects of sports litigation. We are particularly adept at navigating the complex marketing and branding challenges faced by companies in this sector.',
      list: ""
    },
    {
      service_id: Service.find_by(slug: 'sports-law').id,
      heading: 'Public Image Preservation',
      paragraph: 'Recognizing the public nature of sports litigations, we prioritize the preservation of the public image of sports personalities, teams, and enterprises. We collaborate closely with clients on public relations issues associated with litigation, ensuring a strategic approach that safeguards their reputations.',
      list: ""
    },

    {
      service_id: Service.find_by(slug: 'tmt-law').id,
      heading: 'Industry-Leading TMT Services',
      paragraph: 'Our TMT services stand at the forefront of the industry, providing clients with cutting-edge insights and commercial solutions backed by extensive sector experience. We specialize in areas such as outsourcing, IP strategy, media and broadcasting, and technology transactions.',
      list: ""
    },
    {
      service_id: Service.find_by(slug: 'tmt-law').id,
      heading: 'Transactional and Regulatory Advice',
      paragraph: 'Additionally, we offer transactional and regulatory advice to telecom players in India, addressing the unique legal challenges and opportunities within the telecommunications sector.',
      list: ""
    }
  ]
)
