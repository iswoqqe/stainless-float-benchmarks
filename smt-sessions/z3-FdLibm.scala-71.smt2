; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!647 () Bool)

(assert start!647)

(declare-fun res!1650 () Bool)

(declare-fun e!925 () Bool)

(assert (=> start!647 (=> (not res!1650) (not e!925))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!647 (= res!1650 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!647 e!925))

(assert (=> start!647 true))

(declare-datatypes ((array!72 0))(
  ( (array!73 (arr!32 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!32 (_ BitVec 32))) )
))
(declare-fun q!70 () array!72)

(declare-fun array_inv!12 (array!72) Bool)

(assert (=> start!647 (array_inv!12 q!70)))

(declare-fun b!1889 () Bool)

(declare-fun res!1651 () Bool)

(assert (=> b!1889 (=> (not res!1651) (not e!925))))

(declare-fun qInv!0 (array!72) Bool)

(assert (=> b!1889 (= res!1651 (qInv!0 q!70))))

(declare-fun b!1890 () Bool)

(assert (=> b!1890 (= e!925 (or (bvslt jz!42 #b00000000000000000000000000000000) (bvsge jz!42 (size!32 q!70))))))

(assert (= (and start!647 res!1650) b!1889))

(assert (= (and b!1889 res!1651) b!1890))

(declare-fun m!3435 () Bool)

(assert (=> start!647 m!3435))

(declare-fun m!3437 () Bool)

(assert (=> b!1889 m!3437))

(check-sat (not b!1889) (not start!647))
(check-sat)
(get-model)

(declare-fun d!1503 () Bool)

(declare-fun res!1654 () Bool)

(declare-fun e!929 () Bool)

(assert (=> d!1503 (=> (not res!1654) (not e!929))))

(assert (=> d!1503 (= res!1654 (= (size!32 q!70) #b00000000000000000000000000010100))))

(assert (=> d!1503 (= (qInv!0 q!70) e!929)))

(declare-fun b!1893 () Bool)

(declare-fun lambda!70 () Int)

(declare-fun all20!0 (array!72 Int) Bool)

(assert (=> b!1893 (= e!929 (all20!0 q!70 lambda!70))))

(assert (= (and d!1503 res!1654) b!1893))

(declare-fun m!3439 () Bool)

(assert (=> b!1893 m!3439))

(assert (=> b!1889 d!1503))

(declare-fun d!1505 () Bool)

(assert (=> d!1505 (= (array_inv!12 q!70) (bvsge (size!32 q!70) #b00000000000000000000000000000000))))

(assert (=> start!647 d!1505))

(check-sat (not b!1893))
(check-sat)
