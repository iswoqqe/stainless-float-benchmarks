; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2055 () Bool)

(assert start!2055)

(declare-fun res!8205 () Bool)

(declare-fun e!5949 () Bool)

(assert (=> start!2055 (=> (not res!8205) (not e!5949))))

(declare-datatypes ((array!755 0))(
  ( (array!756 (arr!334 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!334 (_ BitVec 32))) )
))
(declare-fun fq!115 () array!755)

(assert (=> start!2055 (= res!8205 (= (size!334 fq!115) #b00000000000000000000000000010100))))

(assert (=> start!2055 e!5949))

(declare-fun array_inv!283 (array!755) Bool)

(assert (=> start!2055 (array_inv!283 fq!115)))

(assert (=> start!2055 true))

(declare-fun b!10258 () Bool)

(declare-fun res!8206 () Bool)

(assert (=> b!10258 (=> (not res!8206) (not e!5949))))

(declare-fun fqInv!0 (array!755) Bool)

(assert (=> b!10258 (= res!8206 (fqInv!0 fq!115))))

(declare-fun b!10259 () Bool)

(declare-fun jz!74 () (_ BitVec 32))

(assert (=> b!10259 (= e!5949 (and (bvsle #b00000000000000000000000000000000 jz!74) (bvslt jz!74 #b00000000000000000000000000010100) (let ((i!338 (bvsub jz!74 #b00000000000000000000000000000001))) (and (bvsge i!338 #b00000000000000000000000000000000) (bvslt i!338 #b00000000000000000000000000000000)))))))

(assert (= (and start!2055 res!8205) b!10258))

(assert (= (and b!10258 res!8206) b!10259))

(declare-fun m!14513 () Bool)

(assert (=> start!2055 m!14513))

(declare-fun m!14515 () Bool)

(assert (=> b!10258 m!14515))

(check-sat (not start!2055) (not b!10258))
(check-sat)
