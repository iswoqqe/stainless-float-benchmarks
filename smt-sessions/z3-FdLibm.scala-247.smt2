; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1435 () Bool)

(assert start!1435)

(declare-datatypes ((array!593 0))(
  ( (array!594 (arr!265 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!265 (_ BitVec 32))) )
))
(declare-fun lt!3693 () array!593)

(declare-fun e!19 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun b!7202 () Bool)

(declare-fun xx!50 () array!593)

(declare-datatypes ((Unit!492 0))(
  ( (Unit!493) )
))
(declare-datatypes ((tuple3!124 0))(
  ( (tuple3!125 (_1!181 Unit!492) (_2!181 (_ BitVec 32)) (_3!162 array!593)) )
))
(declare-fun e!3868 () tuple3!124)

(declare-fun lt!3690 () (_ BitVec 32))

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!593 (_ BitVec 32) array!593) tuple3!124)

(assert (=> b!7202 (= e!3868 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3690 lt!3693))))

(declare-fun b!7203 () Bool)

(declare-fun res!5895 () Bool)

(declare-fun e!3871 () Bool)

(assert (=> b!7203 (=> (not res!5895) (not e!3871))))

(declare-fun f!79 () array!593)

(declare-fun fInv!0 (array!593) Bool)

(assert (=> b!7203 (= res!5895 (fInv!0 f!79))))

(declare-fun b!7204 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!7204 (= e!3871 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000100) #b10000000000000000000000000000000)))))))

(declare-fun b!7206 () Bool)

(declare-fun res!5897 () Bool)

(assert (=> b!7206 (=> (not res!5897) (not e!3871))))

(declare-fun q!51 () array!593)

(declare-fun qInv!0 (array!593) Bool)

(assert (=> b!7206 (= res!5897 (qInv!0 q!51))))

(declare-fun b!7207 () Bool)

(declare-fun Unit!494 () Unit!492)

(assert (=> b!7207 (= e!3868 (tuple3!125 Unit!494 lt!3690 lt!3693))))

(declare-fun b!7208 () Bool)

(declare-fun e!3866 () Bool)

(assert (=> b!7208 (= e!3866 e!3871)))

(declare-fun res!5896 () Bool)

(assert (=> b!7208 (=> (not res!5896) (not e!3871))))

(assert (=> b!7208 (= res!5896 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3692 () tuple3!124)

(assert (=> b!7208 (= lt!3692 e!3868)))

(declare-fun c!860 () Bool)

(assert (=> b!7208 (= c!860 (bvsle lt!3690 (bvadd (bvsub (size!265 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7208 (= lt!3690 #b00000000000000000000000000000000)))

(assert (=> b!7208 (= lt!3693 (array!594 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7209 () Bool)

(declare-fun e!3867 () Bool)

(assert (=> b!7209 (= e!3867 e!3866)))

(declare-fun res!5900 () Bool)

(assert (=> b!7209 (=> (not res!5900) (not e!3866))))

(declare-fun lt!3691 () (_ BitVec 32))

(assert (=> b!7209 (= res!5900 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3691 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3691) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7209 (= lt!3691 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun res!5899 () Bool)

(assert (=> start!1435 (=> (not res!5899) (not e!3867))))

(assert (=> start!1435 (= res!5899 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1435 e!3867))

(declare-fun array_inv!215 (array!593) Bool)

(assert (=> start!1435 (array_inv!215 f!79)))

(assert (=> start!1435 (array_inv!215 q!51)))

(assert (=> start!1435 true))

(assert (=> start!1435 (array_inv!215 xx!50)))

(declare-fun b!7205 () Bool)

(declare-fun res!5898 () Bool)

(assert (=> b!7205 (=> (not res!5898) (not e!3867))))

(declare-fun xxInv!0 (array!593) Bool)

(assert (=> b!7205 (= res!5898 (xxInv!0 xx!50))))

(assert (= (and start!1435 res!5899) b!7205))

(assert (= (and b!7205 res!5898) b!7209))

(assert (= (and b!7209 res!5900) b!7208))

(assert (= (and b!7208 c!860) b!7202))

(assert (= (and b!7208 (not c!860)) b!7207))

(assert (= (and b!7208 res!5896) b!7203))

(assert (= (and b!7203 res!5895) b!7206))

(assert (= (and b!7206 res!5897) b!7204))

(declare-fun m!11925 () Bool)

(assert (=> start!1435 m!11925))

(declare-fun m!11927 () Bool)

(assert (=> start!1435 m!11927))

(declare-fun m!11929 () Bool)

(assert (=> start!1435 m!11929))

(declare-fun m!11931 () Bool)

(assert (=> b!7206 m!11931))

(declare-fun m!11933 () Bool)

(assert (=> b!7203 m!11933))

(declare-fun m!11935 () Bool)

(assert (=> b!7202 m!11935))

(declare-fun m!11937 () Bool)

(assert (=> b!7205 m!11937))

(check-sat (not b!7203) (not start!1435) (not b!7202) (not b!7206) (not b!7205))
(check-sat)
