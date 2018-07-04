echo '<?xml version="1.0" encoding="UTF-8"?>'
echo '<rdf:RDF xmlns="http://purl.uniprot.org/core/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#" xmlns:owl="http://www.w3.org/2002/07/owl#" xmlns:skos="http://www.w3.org/2004/02/skos/core#" xmlns:bibo="http://purl.org/ontology/bibo/"> xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:swrl="http://www.w3.org/2003/11/swrl#" xmlns:protege="http://protege.stanford.edu/plugins/owl/protege#" xmlns:owl2xml="http://www.w3.org/2006/12/owl2-xml#" xmlns:owl="http://www.w3.org/2002/07/owl#" xmlns:xsd="http://www.w3.org/2001/XMLSchema#" xmlns:swrlb="http://www.w3.org/2003/11/swrlb#" xmlns:core="http://purl.uniprot.org/core/" xml:base="http://purl.uniprot.org/core/"'
gunzip -dc `ls *.rdf.gz` | perl -pe 's/^<.?rdf:RDF.*>\n//g' | perl -pe 's/^<\?xml.*>\n//g'
echo '</rdf:RDF>'
