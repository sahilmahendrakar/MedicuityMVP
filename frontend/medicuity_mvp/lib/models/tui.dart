import 'package:flutter/material.dart';

class Tui {
  final String code;
  final String group;
  final String tui;
  final String desc;
  final MaterialColor color;

  const Tui({
    required this.code,
    required this.group,
    required this.tui,
    required this.desc,
    required this.color,
  });
}

Map<String, dynamic> tui_map = {
  'T052': {
    'code': 'ACTI',
    'group': 'Activities & Behaviors',
    'tui': 'T052',
    'desc': 'Activity'
  },
  'T053': {
    'code': 'ACTI',
    'group': 'Activities & Behaviors',
    'tui': 'T053',
    'desc': 'Behavior'
  },
  'T056': {
    'code': 'ACTI',
    'group': 'Activities & Behaviors',
    'tui': 'T056',
    'desc': 'Daily or Recreational Activity'
  },
  'T051': {
    'code': 'ACTI',
    'group': 'Activities & Behaviors',
    'tui': 'T051',
    'desc': 'Event'
  },
  'T064': {
    'code': 'ACTI',
    'group': 'Activities & Behaviors',
    'tui': 'T064',
    'desc': 'Governmental or Regulatory Activity'
  },
  'T055': {
    'code': 'ACTI',
    'group': 'Activities & Behaviors',
    'tui': 'T055',
    'desc': 'Individual Behavior'
  },
  'T066': {
    'code': 'ACTI',
    'group': 'Activities & Behaviors',
    'tui': 'T066',
    'desc': 'Machine Activity'
  },
  'T057': {
    'code': 'ACTI',
    'group': 'Activities & Behaviors',
    'tui': 'T057',
    'desc': 'Occupational Activity'
  },
  'T054': {
    'code': 'ACTI',
    'group': 'Activities & Behaviors',
    'tui': 'T054',
    'desc': 'Social Behavior'
  },
  'T017': {
    'code': 'ANAT',
    'group': 'Anatomy',
    'tui': 'T017',
    'desc': 'Anatomical Structure'
  },
  'T029': {
    'code': 'ANAT',
    'group': 'Anatomy',
    'tui': 'T029',
    'desc': 'Body Location or Region'
  },
  'T023': {
    'code': 'ANAT',
    'group': 'Anatomy',
    'tui': 'T023',
    'desc': 'Body Part, Organ, or Organ Component'
  },
  'T030': {
    'code': 'ANAT',
    'group': 'Anatomy',
    'tui': 'T030',
    'desc': 'Body Space or Junction'
  },
  'T031': {
    'code': 'ANAT',
    'group': 'Anatomy',
    'tui': 'T031',
    'desc': 'Body Substance'
  },
  'T022': {
    'code': 'ANAT',
    'group': 'Anatomy',
    'tui': 'T022',
    'desc': 'Body System'
  },
  'T025': {'code': 'ANAT', 'group': 'Anatomy', 'tui': 'T025', 'desc': 'Cell'},
  'T026': {
    'code': 'ANAT',
    'group': 'Anatomy',
    'tui': 'T026',
    'desc': 'Cell Component'
  },
  'T018': {
    'code': 'ANAT',
    'group': 'Anatomy',
    'tui': 'T018',
    'desc': 'Embryonic Structure'
  },
  'T021': {
    'code': 'ANAT',
    'group': 'Anatomy',
    'tui': 'T021',
    'desc': 'Fully Formed Anatomical Structure'
  },
  'T024': {'code': 'ANAT', 'group': 'Anatomy', 'tui': 'T024', 'desc': 'Tissue'},
  'T116': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T116',
    'desc': 'Amino Acid, Peptide, or Protein'
  },
  'T195': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T195',
    'desc': 'Antibiotic'
  },
  'T123': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T123',
    'desc': 'Biologically Active Substance'
  },
  'T122': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T122',
    'desc': 'Biomedical or Dental Material'
  },
  'T103': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T103',
    'desc': 'Chemical'
  },
  'T120': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T120',
    'desc': 'Chemical Viewed Functionally'
  },
  'T104': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T104',
    'desc': 'Chemical Viewed Structurally'
  },
  'T200': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T200',
    'desc': 'Clinical Drug'
  },
  'T196': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T196',
    'desc': 'Element, Ion, or Isotope'
  },
  'T126': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T126',
    'desc': 'Enzyme'
  },
  'T131': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T131',
    'desc': 'Hazardous or Poisonous Substance'
  },
  'T125': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T125',
    'desc': 'Hormone'
  },
  'T129': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T129',
    'desc': 'Immunologic Factor'
  },
  'T130': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T130',
    'desc': 'Indicator, Reagent, or Diagnostic Aid'
  },
  'T197': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T197',
    'desc': 'Inorganic Chemical'
  },
  'T114': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T114',
    'desc': 'Nucleic Acid, Nucleoside, or Nucleotide'
  },
  'T109': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T109',
    'desc': 'Organic Chemical'
  },
  'T121': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T121',
    'desc': 'Pharmacologic Substance'
  },
  'T192': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T192',
    'desc': 'Receptor'
  },
  'T127': {
    'code': 'CHEM',
    'group': 'Chemicals & Drugs',
    'tui': 'T127',
    'desc': 'Vitamin'
  },
  'T185': {
    'code': 'CONC',
    'group': 'Concepts & Ideas',
    'tui': 'T185',
    'desc': 'Classification'
  },
  'T077': {
    'code': 'CONC',
    'group': 'Concepts & Ideas',
    'tui': 'T077',
    'desc': 'Conceptual Entity'
  },
  'T169': {
    'code': 'CONC',
    'group': 'Concepts & Ideas',
    'tui': 'T169',
    'desc': 'Functional Concept'
  },
  'T102': {
    'code': 'CONC',
    'group': 'Concepts & Ideas',
    'tui': 'T102',
    'desc': 'Group Attribute'
  },
  'T078': {
    'code': 'CONC',
    'group': 'Concepts & Ideas',
    'tui': 'T078',
    'desc': 'Idea or Concept'
  },
  'T170': {
    'code': 'CONC',
    'group': 'Concepts & Ideas',
    'tui': 'T170',
    'desc': 'Intellectual Product'
  },
  'T171': {
    'code': 'CONC',
    'group': 'Concepts & Ideas',
    'tui': 'T171',
    'desc': 'Language'
  },
  'T080': {
    'code': 'CONC',
    'group': 'Concepts & Ideas',
    'tui': 'T080',
    'desc': 'Qualitative Concept'
  },
  'T081': {
    'code': 'CONC',
    'group': 'Concepts & Ideas',
    'tui': 'T081',
    'desc': 'Quantitative Concept'
  },
  'T089': {
    'code': 'CONC',
    'group': 'Concepts & Ideas',
    'tui': 'T089',
    'desc': 'Regulation or Law'
  },
  'T082': {
    'code': 'CONC',
    'group': 'Concepts & Ideas',
    'tui': 'T082',
    'desc': 'Spatial Concept'
  },
  'T079': {
    'code': 'CONC',
    'group': 'Concepts & Ideas',
    'tui': 'T079',
    'desc': 'Temporal Concept'
  },
  'T203': {
    'code': 'DEVI',
    'group': 'Devices',
    'tui': 'T203',
    'desc': 'Drug Delivery Device'
  },
  'T074': {
    'code': 'DEVI',
    'group': 'Devices',
    'tui': 'T074',
    'desc': 'Medical Device'
  },
  'T075': {
    'code': 'DEVI',
    'group': 'Devices',
    'tui': 'T075',
    'desc': 'Research Device'
  },
  'T020': {
    'code': 'DISO',
    'group': 'Disorders',
    'tui': 'T020',
    'desc': 'Acquired Abnormality'
  },
  'T190': {
    'code': 'DISO',
    'group': 'Disorders',
    'tui': 'T190',
    'desc': 'Anatomical Abnormality'
  },
  'T049': {
    'code': 'DISO',
    'group': 'Disorders',
    'tui': 'T049',
    'desc': 'Cell or Molecular Dysfunction'
  },
  'T019': {
    'code': 'DISO',
    'group': 'Disorders',
    'tui': 'T019',
    'desc': 'Congenital Abnormality'
  },
  'T047': {
    'code': 'DISO',
    'group': 'Disorders',
    'tui': 'T047',
    'desc': 'Disease or Syndrome'
  },
  'T050': {
    'code': 'DISO',
    'group': 'Disorders',
    'tui': 'T050',
    'desc': 'Experimental Model of Disease'
  },
  'T033': {
    'code': 'DISO',
    'group': 'Disorders',
    'tui': 'T033',
    'desc': 'Finding'
  },
  'T037': {
    'code': 'DISO',
    'group': 'Disorders',
    'tui': 'T037',
    'desc': 'Injury or Poisoning'
  },
  'T048': {
    'code': 'DISO',
    'group': 'Disorders',
    'tui': 'T048',
    'desc': 'Mental or Behavioral Dysfunction'
  },
  'T191': {
    'code': 'DISO',
    'group': 'Disorders',
    'tui': 'T191',
    'desc': 'Neoplastic Process'
  },
  'T046': {
    'code': 'DISO',
    'group': 'Disorders',
    'tui': 'T046',
    'desc': 'Pathologic Function'
  },
  'T184': {
    'code': 'DISO',
    'group': 'Disorders',
    'tui': 'T184',
    'desc': 'Sign or Symptom'
  },
  'T087': {
    'code': 'GENE',
    'group': 'Genes & Molecular Sequences',
    'tui': 'T087',
    'desc': 'Amino Acid Sequence'
  },
  'T088': {
    'code': 'GENE',
    'group': 'Genes & Molecular Sequences',
    'tui': 'T088',
    'desc': 'Carbohydrate Sequence'
  },
  'T028': {
    'code': 'GENE',
    'group': 'Genes & Molecular Sequences',
    'tui': 'T028',
    'desc': 'Gene or Genome'
  },
  'T085': {
    'code': 'GENE',
    'group': 'Genes & Molecular Sequences',
    'tui': 'T085',
    'desc': 'Molecular Sequence'
  },
  'T086': {
    'code': 'GENE',
    'group': 'Genes & Molecular Sequences',
    'tui': 'T086',
    'desc': 'Nucleotide Sequence'
  },
  'T083': {
    'code': 'GEOG',
    'group': 'Geographic Areas',
    'tui': 'T083',
    'desc': 'Geographic Area'
  },
  'T100': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T100',
    'desc': 'Age Group'
  },
  'T011': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T011',
    'desc': 'Amphibian'
  },
  'T008': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T008',
    'desc': 'Animal'
  },
  'T194': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T194',
    'desc': 'Archaeon'
  },
  'T007': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T007',
    'desc': 'Bacterium'
  },
  'T012': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T012',
    'desc': 'Bird'
  },
  'T204': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T204',
    'desc': 'Eukaryote'
  },
  'T099': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T099',
    'desc': 'Family Group'
  },
  'T013': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T013',
    'desc': 'Fish'
  },
  'T004': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T004',
    'desc': 'Fungus'
  },
  'T096': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T096',
    'desc': 'Group'
  },
  'T016': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T016',
    'desc': 'Human'
  },
  'T015': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T015',
    'desc': 'Mammal'
  },
  'T001': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T001',
    'desc': 'Organism'
  },
  'T101': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T101',
    'desc': 'Patient or Disabled Group'
  },
  'T002': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T002',
    'desc': 'Plant'
  },
  'T098': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T098',
    'desc': 'Population Group'
  },
  'T097': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T097',
    'desc': 'Professional or Occupational Group'
  },
  'T014': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T014',
    'desc': 'Reptile'
  },
  'T010': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T010',
    'desc': 'Vertebrate'
  },
  'T005': {
    'code': 'LIVB',
    'group': 'Living Beings',
    'tui': 'T005',
    'desc': 'Virus'
  },
  'T071': {'code': 'OBJC', 'group': 'Objects', 'tui': 'T071', 'desc': 'Entity'},
  'T168': {'code': 'OBJC', 'group': 'Objects', 'tui': 'T168', 'desc': 'Food'},
  'T073': {
    'code': 'OBJC',
    'group': 'Objects',
    'tui': 'T073',
    'desc': 'Manufactured Object'
  },
  'T072': {
    'code': 'OBJC',
    'group': 'Objects',
    'tui': 'T072',
    'desc': 'Physical Object'
  },
  'T167': {
    'code': 'OBJC',
    'group': 'Objects',
    'tui': 'T167',
    'desc': 'Substance'
  },
  'T091': {
    'code': 'OCCU',
    'group': 'Occupations',
    'tui': 'T091',
    'desc': 'Biomedical Occupation or Discipline'
  },
  'T090': {
    'code': 'OCCU',
    'group': 'Occupations',
    'tui': 'T090',
    'desc': 'Occupation or Discipline'
  },
  'T093': {
    'code': 'ORGA',
    'group': 'Organizations',
    'tui': 'T093',
    'desc': 'Health Care Related Organization'
  },
  'T092': {
    'code': 'ORGA',
    'group': 'Organizations',
    'tui': 'T092',
    'desc': 'Organization'
  },
  'T094': {
    'code': 'ORGA',
    'group': 'Organizations',
    'tui': 'T094',
    'desc': 'Professional Society'
  },
  'T095': {
    'code': 'ORGA',
    'group': 'Organizations',
    'tui': 'T095',
    'desc': 'Self-help or Relief Organization'
  },
  'T038': {
    'code': 'PHEN',
    'group': 'Phenomena',
    'tui': 'T038',
    'desc': 'Biologic Function'
  },
  'T069': {
    'code': 'PHEN',
    'group': 'Phenomena',
    'tui': 'T069',
    'desc': 'Environmental Effect of Humans'
  },
  'T068': {
    'code': 'PHEN',
    'group': 'Phenomena',
    'tui': 'T068',
    'desc': 'Human-caused Phenomenon or Process'
  },
  'T034': {
    'code': 'PHEN',
    'group': 'Phenomena',
    'tui': 'T034',
    'desc': 'Laboratory or Test Result'
  },
  'T070': {
    'code': 'PHEN',
    'group': 'Phenomena',
    'tui': 'T070',
    'desc': 'Natural Phenomenon or Process'
  },
  'T067': {
    'code': 'PHEN',
    'group': 'Phenomena',
    'tui': 'T067',
    'desc': 'Phenomenon or Process'
  },
  'T043': {
    'code': 'PHYS',
    'group': 'Physiology',
    'tui': 'T043',
    'desc': 'Cell Function'
  },
  'T201': {
    'code': 'PHYS',
    'group': 'Physiology',
    'tui': 'T201',
    'desc': 'Clinical Attribute'
  },
  'T045': {
    'code': 'PHYS',
    'group': 'Physiology',
    'tui': 'T045',
    'desc': 'Genetic Function'
  },
  'T041': {
    'code': 'PHYS',
    'group': 'Physiology',
    'tui': 'T041',
    'desc': 'Mental Process'
  },
  'T044': {
    'code': 'PHYS',
    'group': 'Physiology',
    'tui': 'T044',
    'desc': 'Molecular Function'
  },
  'T032': {
    'code': 'PHYS',
    'group': 'Physiology',
    'tui': 'T032',
    'desc': 'Organism Attribute'
  },
  'T040': {
    'code': 'PHYS',
    'group': 'Physiology',
    'tui': 'T040',
    'desc': 'Organism Function'
  },
  'T042': {
    'code': 'PHYS',
    'group': 'Physiology',
    'tui': 'T042',
    'desc': 'Organ or Tissue Function'
  },
  'T039': {
    'code': 'PHYS',
    'group': 'Physiology',
    'tui': 'T039',
    'desc': 'Physiologic Function'
  },
  'T060': {
    'code': 'PROC',
    'group': 'Procedures',
    'tui': 'T060',
    'desc': 'Diagnostic Procedure'
  },
  'T065': {
    'code': 'PROC',
    'group': 'Procedures',
    'tui': 'T065',
    'desc': 'Educational Activity'
  },
  'T058': {
    'code': 'PROC',
    'group': 'Procedures',
    'tui': 'T058',
    'desc': 'Health Care Activity'
  },
  'T059': {
    'code': 'PROC',
    'group': 'Procedures',
    'tui': 'T059',
    'desc': 'Laboratory Procedure'
  },
  'T063': {
    'code': 'PROC',
    'group': 'Procedures',
    'tui': 'T063',
    'desc': 'Molecular Biology Research Technique'
  },
  'T062': {
    'code': 'PROC',
    'group': 'Procedures',
    'tui': 'T062',
    'desc': 'Research Activity'
  },
  'T061': {
    'code': 'PROC',
    'group': 'Procedures',
    'tui': 'T061',
    'desc': 'Therapeutic or Preventive Procedure'
  },
};

Map<String, MaterialColor> tuiCode_to_color = {
  'ACTI': Colors.red,
  'ANAT': Colors.deepOrange,
  'CHEM': Colors.orange,
  'CONC': Colors.green,
  'DEVI': Colors.teal,
  'DISO': Colors.cyan,
  'GENE': Colors.lightBlue,
  'GEOG': Colors.pink,
  'LIVB': Colors.blue,
  'OCCU': Colors.grey,
  'OBJC': Colors.indigo,
  'ORGA': Colors.purple,
  'PHEN': Colors.deepPurple,
  'PHYS': Colors.blueGrey,
  'PROC': Colors.brown,
};
