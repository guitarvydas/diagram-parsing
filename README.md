Diagram Parsing

Rudimentary diagram parsing, in small steps.

0.  Create the diagram in diagram.drawio using digrams.net editor (formerly known as drawio).

00. Manually create a factbase diagram.pl using information from the property menu of diagrams.net. There are only 7 boxes, so creating diagram.pl manually is possible. (To see how to create the factbase automatically, see ../diagrams as syntax/phase1).

1. Create Bounding Boxes: See https://guitarvydas.github.io/2021/07/25/Parsing-Diagrams-Bounding-Boxes.html

2. Infer Containment: (a) Modify diagram.drawio to contain 2 more inner boxes, "m" and "n". (b) First level of containment - see contain1.pl. This infers ALL containment, e.g. d contains e and d contains f, etc. In other layers, we will prune the deep containment and infer direct containment (only).

3. Test - ports (input and output) on all 4 sides of rect m and rect n (see runportstest.bash and portstest.pl)

4. Design Rule - error check for "orphan ports", ports not touching the sides of any rectangle. See rundesignrule.bash and designrule.pl and orphans.pl and orphans.drawio.
