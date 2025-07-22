; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2911 () Bool)

(assert start!2911)

(declare-fun b_free!9 () Bool)

(declare-fun b_next!9 () Bool)

(assert (=> start!2911 (= b_free!9 (not b_next!9))))

(declare-fun tp!14 () Bool)

(declare-fun b_and!29 () Bool)

(assert (=> start!2911 (= tp!14 b_and!29)))

(declare-fun res!12450 () Bool)

(declare-fun e!8980 () Bool)

(assert (=> start!2911 (=> (not res!12450) (not e!8980))))

(declare-datatypes ((array!1345 0))(
  ( (array!1346 (arr!591 (Array (_ BitVec 32) (_ BitVec 32))) (size!591 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1345)

(assert (=> start!2911 (= res!12450 (= (size!591 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2911 e!8980))

(declare-fun array_inv!539 (array!1345) Bool)

(assert (=> start!2911 (array_inv!539 a!13)))

(assert (=> start!2911 tp!14))

(declare-fun b!15861 () Bool)

(declare-fun res!12449 () Bool)

(assert (=> b!15861 (=> (not res!12449) (not e!8980))))

(declare-fun P!6 () Int)

(declare-fun dynLambda!42 (Int (_ BitVec 32)) Bool)

(assert (=> b!15861 (= res!12449 (dynLambda!42 P!6 (select (arr!591 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!15862 () Bool)

(assert (=> b!15862 (= e!8980 (bvsge #b00000000000000000000000000000001 (size!591 a!13)))))

(assert (= (and start!2911 res!12450) b!15861))

(assert (= (and b!15861 res!12449) b!15862))

(declare-fun b_lambda!5321 () Bool)

(assert (=> (not b_lambda!5321) (not b!15861)))

(declare-fun t!211 () Bool)

(declare-fun tb!21 () Bool)

(assert (=> (and start!2911 (= P!6 P!6) t!211) tb!21))

(declare-fun result!21 () Bool)

(assert (=> tb!21 (= result!21 true)))

(assert (=> b!15861 t!211))

(declare-fun b_and!31 () Bool)

(assert (= b_and!29 (and (=> t!211 result!21) b_and!31)))

(declare-fun m!22197 () Bool)

(assert (=> start!2911 m!22197))

(declare-fun m!22199 () Bool)

(assert (=> b!15861 m!22199))

(assert (=> b!15861 m!22199))

(declare-fun m!22201 () Bool)

(assert (=> b!15861 m!22201))

(check-sat (not start!2911) (not b_lambda!5321) b_and!31 (not b_next!9))
(check-sat b_and!31 (not b_next!9))
