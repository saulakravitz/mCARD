// THIS FILE CONTAINS THE VALUE SETS FOR CARDIOVASCULAR CONDITIONS AND RELATED RISK FACTORS
// The value sets just contain a set of illustrative SNOMED examples for now.

//Cardiologists often divide heart disease into six major categories. Should each get its own value set. If so, here's what it might look like.
ValueSet:   CoronaryDisorderVS
Id: mcard-coronary-disorder-vs
Title: "Coronary Disorder Value Set"
Description:  "Types of coronary disorders, coded in SNOMED CT or ICD-10-CM."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept is-a #414024009  "Disorder of coronary artery (disorder)"

ValueSet:  VascularDisorderVS
Id: mcard-vascular-disorder-vs
Title: "Vascular Disorder Value Set"
Description:    "Types of vascular disorders, coded in SNOMED CT or ICD-10-CM."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept is-a #27550009 "Disorder of blood vessel (disorder)"

ValueSet:  CongenitalHeartDisorderVS
Id: mcard-congenital-disorder-vs
Title: "Congenital Heart Disorder Value Set"
Description:    "Types of congenital heart disorders, coded in SNOMED CT or ICD-10-CM."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept is-a #13213009 "Congenital heart disease (disorder)"

ValueSet:  StructuralHeartDisorderVS
Id: mcard-structural-disorder-vs
Title: "Structural Heart Disorder Value Set"
Description:    "Types of structural heart disorders, coded in SNOMED CT or ICD-10-CM."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept is-a #128599005 "Structural disorder of heart (disorder)"

ValueSet:  HeartRhythmDisorderVS
Id: mcard-heart-rhythm-disorder-vs
Title: "Heart Rhythm Disorder Value Set"
Description:    "Types of heart rhythm disorders, coded in SNOMED CT or ICD-10-CM."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept is-a #698247007 "Cardiac arrhythmia (disorder)"

ValueSet:  HeartFailureDisorderVS //includes disorders not included in six categories above
Id: mcard-heart-failure-disorder-vs
Title: "Heart Failure Disorder Value Set"
Description:    "Types of heart failure disorders, coded in SNOMED CT or ICD-10-CM."
* insert SNOMEDCopyrightForVS
* include codes from system SCT where concept is-a #84114007 "Heart failure (disorder)"

//Cardiac Conditions
ValueSet:  CardiovascularDisorderVS
Id: mcard-cardiovascular-disorder-vs
Title: "Cardiovascular Disorder Value Set"
Description:    "Types of cardiovascular disease, coded in SNOMED CT or ICD-10-CM."
* insert SNOMEDCopyrightForVS
* include codes from valueset CoronaryDisorderVS
* include codes from valueset StructuralHeartDisorderVS
* include codes from valueset CongenitalHeartDisorderVS
* include codes from valueset VascularDisorderVS
* include codes from valueset HeartRhythmDisorderVS
* include codes from valueset HeartFailureDisorderVS

//Cardiac risk factors, including those risk factors that are also cardiac conditions
ValueSet: CardiovascularRiskFactorDisorderVS
Id: mcard-cardiovascular-risk-factor-disorder-vs
Title: "Cardiovascular Risk Factor Disorder Value Set"
Description:   "Types of disorders that are cardiovascular risk factors, coded in SNOMED CT or ICD-10-CM. Includes non-cardiovascular disorders that increase broad cancer-related value set containing both primary and secondary tumor types, with codes from ICD-10 and SNOMED CT, including both diagnosis and histology/morphology/behavior codes. ICD-O-3 morphology codes may also be used and are considered conformant to the specification. For SNOMED, the value set includes all codes descending from 363346000 'Malignant neoplastic disease (disorder)' and 108369006 'Neoplasm (morphologic abnormality)'."
* insert SNOMEDCopyrightForVS
//this will probably be the toughest value set to put together. Should this just include non-cardiovascular risk factors?


//Combined set of cardiac conditions and cardiac risk factors
ValueSet: CardiovascularRelatedDisorderVS
Id: mcard-cardiovascular-related-disorder-vs
Title: "Cardiovascular-Related Disorder Value Set"
Description:   "A broad cardiovascular-related value set containing both cardiovascular disorders and cardiovascular risk factors, with diagnosis codes from ICD-10 and SNOMED CT. For SNOMED, the value set includes all codes descending from 363346000 'Malignant neoplastic disease (disorder)' and 108369006 'Neoplasm (morphologic abnormality)'."
* insert SNOMEDCopyrightForVS
* include codes from valueset CardiovascularDisorderVS
* include codes from valueset CardiovascularRiskFactorDisorderVS