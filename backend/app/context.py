import spacy

from scispacy.abbreviation import AbbreviationDetector
from scispacy.linking import EntityLinker

nlp = spacy.load("en_core_sci_sm")

# Add the abbreviation pipe to the spacy pipeline.
nlp.add_pipe("abbreviation_detector")

nlp.add_pipe("scispacy_linker", config={"resolve_abbreviations": True, "linker_name": "umls"})

def analyze_text(text):
    doc = nlp(text)

    # print(doc.ents)
    # print(doc.ents[0].label_)

    # Each entity is linked to UMLS with a score
    # (currently just char-3gram matching).
    linker = nlp.get_pipe("scispacy_linker")

    term_arr = []

    for entity in doc.ents:
        if len(entity._.kb_ents) > 0:
            umls_ent = entity._.kb_ents[0]
            term = linker.kb.cui_to_entity[umls_ent[0]]
            term_dict = {}
            term_dict["aliases"] = term.aliases
            term_dict["name"] = term.canonical_name
            term_dict["concept_id"] = term.concept_id
            term_dict["types"] = term.types
            term_dict["start"] = entity.start_char
            term_dict["end"] = entity.end_char
            term_dict["definition"] = term.definition if term.definition else ""
            term_arr.append(term_dict)
        # for umls_ent in entity._.kb_ents:
        #     # Use dir() to see attributes
        #     term = linker.kb.cui_to_entity[umls_ent[0]]
        #     term_dict = {}
        #     term_dict["aliases"] = term.aliases
        #     term_dict["name"] = term.canonical_name
        #     term_dict["concept_id"] = term.concept_id
        #     term_dict["types"] = term.types
        #     term_dict["start"] = entity.start
        #     term_dict["end"] = entity.end
        #     term_arr.append(term_dict)

            # 'aliases', 'canonical_name', 'concept_id', 'count', 'definition', 'index', 'types

    return term_arr

test = analyze_text("John Smith had Spinal and bulbar muscular atrophy (SBMA), which is an \
            inherited motor neuron disease caused by the expansion \
            of a polyglutamine tract within the androgen receptor (AR). \
            SBMA can be caused by this easily.")