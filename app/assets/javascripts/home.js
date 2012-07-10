$(function () {
  timecards = new window.Ghostwriter.Models.Timecards();
  timecards_view = new window.Ghostwriter.Views.TimecardsView({
    el: $("#timecards"),
    collection: timecards
  });
  timecards_view.render();
  timecards.fetch();

  expenses = new window.Ghostwriter.Models.Expenses();
  expenses_view = new window.Ghostwriter.Views.ExpensesView({
    el: $('#expenses'),
    collection: expenses,
    timecards: timecards_view
  });
  expenses_view.render();

  $( "#tabs" ).tabs();
});