; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1271 () Bool)

(assert start!1271)

(declare-fun res!4620 () Bool)

(declare-fun e!3223 () Bool)

(assert (=> start!1271 (=> (not res!4620) (not e!3223))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1271 (= res!4620 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1271 e!3223))

(assert (=> start!1271 true))

(declare-datatypes ((array!534 0))(
  ( (array!535 (arr!240 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!240 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!534)

(declare-fun array_inv!190 (array!534) Bool)

(assert (=> start!1271 (array_inv!190 xx!37)))

(declare-fun b!5722 () Bool)

(declare-fun res!4619 () Bool)

(assert (=> b!5722 (=> (not res!4619) (not e!3223))))

(declare-fun xxInv!0 (array!534) Bool)

(assert (=> b!5722 (= res!4619 (xxInv!0 xx!37))))

(declare-fun b!5723 () Bool)

(declare-fun lt!3189 () (_ BitVec 32))

(assert (=> b!5723 (= e!3223 (and (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3189 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3189) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (let ((i!161 #b00000000000000000000000000000000)) (and (bvsle i!161 (bvadd (bvsub (size!240 xx!37) #b00000000000000000000000000000001) jz!27)) (let ((tmp!156 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))) (and (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt tmp!156 #b00000000000000000000000000000000) #b00000000000000000000000000000000 tmp!156) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsgt i!161 (bvadd (bvsub (size!240 xx!37) #b00000000000000000000000000000001) jz!27))))))))))

(assert (=> b!5723 (= lt!3189 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1271 res!4620) b!5722))

(assert (= (and b!5722 res!4619) b!5723))

(declare-fun m!9135 () Bool)

(assert (=> start!1271 m!9135))

(declare-fun m!9137 () Bool)

(assert (=> b!5722 m!9137))

(check-sat (not start!1271) (not b!5722))
(check-sat)
