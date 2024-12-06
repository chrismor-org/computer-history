CREATE (company:Company {company_name: 'Allen-Babcock', founded: 1964});
CREATE (company:Company {company_name: 'Amdhal', founded: 1970});
CREATE (company:Company {company_name: 'Apollo', founded: 1980});
CREATE (company:Company {company_name: 'Apple', founded: 1976});
CREATE (company:Company {company_name: 'ARM', founded: 1978});
CREATE (company:Company {company_name: 'Bell Labs', founded: 1925});
CREATE (company:Company {company_name: 'Bolt, Beranek and Newman', founded: 1948, abbr: 'BBN'});
CREATE (company:Company {company_name: 'Burroughs', founded: 1904});
CREATE (company:Company {company_name: 'Cambridge University', founded: 1209});
CREATE (company:Company {company_name: 'Control Data Corporation', founded: 1957, abbr: 'CDC'});
CREATE (company:Company {company_name: 'Concurrent Computer', founded: 1985});
CREATE (company:Company {company_name: 'Cray', founded: 1972});
CREATE (company:Company {company_name: 'Dartmouth College', founded: 1769});
CREATE (company:Company {company_name: 'Data General', founded: 1968, abbr: 'DG'});
CREATE (company:Company {company_name: 'Digital Equipment Corporation', founded: 1957, abbr: 'DEC'});
CREATE (company:Company {company_name: 'Digital Research', founded: 1974});
CREATE (company:Company {company_name: 'Eindhoven University of Technology', founded: 1956});
CREATE (company:Company {company_name: 'ElectroData Corporation', founded: 1950});
CREATE (company:Company {company_name: 'Electrologica', founded: 1956});
CREATE (company:Company {company_name: 'Elwro', founded: 1959});
CREATE (company:Company {company_name: 'Encore Computer', founded: 1983});
CREATE (company:Company {company_name: 'English Electric', founded: 1918});
CREATE (company:Company {company_name: 'Engineering Research Associates', founded: 1946, abbr: 'ERA'});
CREATE (company:Company {company_name: 'ETA Systems', founded: 1983, abbr: 'ETA'});
CREATE (company:Company {company_name: 'Ferranti', founded: 1901});
CREATE (company:Company {company_name: 'General Electric', founded: 1892, abbr: 'GE'});
CREATE (company:Company {company_name: 'General Motors', founded: 1908, abbr: 'GM'});
CREATE (company:Company {company_name: 'Gould Electronics', founded: 1928, abbr: 'Gould'});
CREATE (company:Company {company_name: 'Groupe Bull', founded: 1931});
CREATE (company:Company {company_name: 'Honeywell', founded: 1906});
CREATE (company:Company {company_name: 'Hewlett Packard', founded: 1939, abbr: 'HP'});
CREATE (company:Company {company_name: 'International Business Machines', founded: 1911, abbr: 'IBM'});
CREATE (company:Company {company_name: 'International Computers Limited', founded: 1968, abbr: 'ICL'});
CREATE (company:Company {company_name: 'International Computers and Tabulators', founded: 1959, abbr: 'ICT'});
CREATE (company:Company {company_name: 'Intel', founded: 1968});
CREATE (company:Company {company_name: 'Interdata', founded: 1966});
CREATE (company:Company {company_name: 'J. Lyons and Co', founded: 1884, abbr: 'LEO'});
CREATE (company:Company {company_name: 'Lawrence Livermore Laboratory', founded: 1952, abbr: 'LLNL'});
CREATE (company:Company {company_name: 'Lockheed Aircraft', founded: 1926});
CREATE (company:Company {company_name: 'Manchester University', founded: 1824});
CREATE (company:Company {company_name: 'MASSCOMP', founded: 1981});
CREATE (company:Company {company_name: 'Microsoft', founded: 1975});
CREATE (company:Company {company_name: 'Massachusetts Institute of Technology', founded: 1861, abbr: 'MIT'});
CREATE (company:Company {company_name: 'National CSS', founded: 1966, abbr: 'NCSS'});
CREATE (company:Company {company_name: 'National Cash Register', founded: 1884, abbr: 'NCR'});
CREATE (company:Company {company_name: 'North American Aviation', founded: 1928, abbr: 'NAA'});
CREATE (company:Company {company_name: 'Novell', founded: 1980});
CREATE (company:Company {company_name: 'Perkin-Elmer', founded: 1937});
CREATE (company:Company {company_name: 'Microdata Corporation', founded: 1969, abbr: 'Microdata'});
CREATE (company:Company {company_name: 'Pick Systems', founded: 1973});
CREATE (company:Company {company_name: 'Rand', founded: 1948});
CREATE (company:Company {company_name: 'Raytheon', founded: 1922});
CREATE (company:Company {company_name: 'Radio Corporation of America', founded: 1933, abbr: 'RCA'});
CREATE (company:Company {company_name: 'Regnecentralen', founded: 1955});
CREATE (company:Company {company_name: 'Seattle Computer Products', founded: 1978, abbr: 'SCP'});
CREATE (company:Company {company_name: 'SHARE User Group', founded: 1955});
CREATE (company:Company {company_name: 'Scientific Data Systems', founded: 1961, abbr: 'SDS'});
CREATE (company:Company {company_name: 'Silicon Graphics', founded: 1981, abbr: 'SGI'});
CREATE (company:Company {company_name: 'Sperry', founded: 1910});
CREATE (company:Company {company_name: 'Stanford University', founded: 1885});
CREATE (company:Company {company_name: 'Sun Microsystems', founded: 1982, abbr: 'Sun'});
CREATE (company:Company {company_name: 'Systems Engineering Laboratories', founded: 1959, abbr: 'SEL'});
CREATE (company:Company {company_name: 'Texas Instruments', founded: 1930, abbr: 'TI'});
CREATE (company:Company {company_name: 'Unisys', founded: 1986});
CREATE (company:Company {company_name: 'University of California, San Diego', founded: 1960, abbr: 'UCSD'});
CREATE (company:Company {company_name: 'University of Michigan', founded: 1817, abbr: 'UMI'});
CREATE (company:Company {company_name: 'Wang Laboratories', founded: 1951, abbr: 'Wang'});
CREATE (company:Company {company_name: 'Xerox', founded: 1906});
CREATE (company:Company {company_name: 'University of California, Berkeley', founded: 1868, abbr: 'UC Berkeley'});

CREATE TEXT INDEX company_name_index FOR (company:Company) ON (company.company_name);

MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Allen-Babcock' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Amdhal' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Apollo' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Apple' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'ARM' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Bell Labs' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Bolt, Beranek and Newman' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Burroughs' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Cambridge University' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Control Data Corporation' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf;
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Concurrent Computer' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Cray' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Dartmouth College' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Data General' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Digital Equipment Corporation' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Digital Research' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Eindhoven University of Technology' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'ElectroData Corporation' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Electrologica' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Elwro' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Encore Computer' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'English Electric' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Engineering Research Associates' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'ETA Systems' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Ferranti' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'General Electric' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'General Motors' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Gould Electronics' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Groupe Bull' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Honeywell' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Hewlett Packard' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'International Business Machines' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'International Computers Limited' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'International Computers and Tabulators' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Intel' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Interdata' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'J. Lyons and Co' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Lawrence Livermore Laboratory' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Lockheed Aircraft' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Manchester University' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'MASSCOMP' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Microsoft' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Massachusetts Institute of Technology' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'National CSS' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'National Cash Register' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'North American Aviation' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Novell' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Perkin-Elmer' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Microdata Corporation' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Pick Systems' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Rand' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Raytheon' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Radio Corporation of America' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Regnecentralen' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Seattle Computer Products' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'SHARE User Group' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Scientific Data Systems' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Silicon Graphics' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Sperry' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Stanford University' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Sun Microsystems' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Systems Engineering Laboratories' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Texas Instruments' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Unisys' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'University of California, Berkeley' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'University of California, San Diego' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'University of Michigan' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Wang Laboratories' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
MATCH (a:Company)
    WITH a
        MATCH (b:Year)
            WHERE a.company_name = 'Xerox' AND a.founded = b.year
                CREATE (a)-[yf:FOUNDED]->(b)
                RETURN yf; 
