from picard_curves import PicardCurve

R.<x> = PolynomialRing(QQ)
fs = [ x^4 - 6*x^2 - 3 ]

for f in fs:
    Y = PicardCurve(f, special = True)
    # If this fails due to MCLF not being available, try
    #Y = PicardCurve(f, special = True, calccond = false)
    print Y
    print "Long Weierstrass equation:"
    print Y.lwe
    print "Short Weierstrass equation:"
    print Y.swe
    print "Reduced Weierstrass equation:"
    print Y.rwe
    print "Arithmetic invariants:"
    print Y.invs_QQ
    print "Geometric invariants:"
    print Y.invs_geo
    print "Discriminant:"
    print Y.disc
    print "Conductor:"
    print Y.cond
    print "Reduction type:"
    print Y.reds
