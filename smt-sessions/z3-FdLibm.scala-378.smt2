; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2057 () Bool)

(assert start!2057)

(declare-fun res!8211 () Bool)

(declare-fun e!5955 () Bool)

(assert (=> start!2057 (=> (not res!8211) (not e!5955))))

(declare-datatypes ((array!757 0))(
  ( (array!758 (arr!335 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!335 (_ BitVec 32))) )
))
(declare-fun fq!115 () array!757)

(assert (=> start!2057 (= res!8211 (= (size!335 fq!115) #b00000000000000000000000000010100))))

(assert (=> start!2057 e!5955))

(declare-fun array_inv!284 (array!757) Bool)

(assert (=> start!2057 (array_inv!284 fq!115)))

(assert (=> start!2057 true))

(declare-fun b!10264 () Bool)

(declare-fun res!8212 () Bool)

(assert (=> b!10264 (=> (not res!8212) (not e!5955))))

(declare-fun fqInv!0 (array!757) Bool)

(assert (=> b!10264 (= res!8212 (fqInv!0 fq!115))))

(declare-fun b!10265 () Bool)

(declare-fun jz!74 () (_ BitVec 32))

(assert (=> b!10265 (= e!5955 (and (bvsle #b00000000000000000000000000000000 jz!74) (bvslt jz!74 #b00000000000000000000000000010100) (not (= (bvand jz!74 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!74 #b10000000000000000000000000000000) (bvand (bvsub jz!74 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!2057 res!8211) b!10264))

(assert (= (and b!10264 res!8212) b!10265))

(declare-fun m!14517 () Bool)

(assert (=> start!2057 m!14517))

(declare-fun m!14519 () Bool)

(assert (=> b!10264 m!14519))

(check-sat (not b!10264) (not start!2057))
(check-sat)
